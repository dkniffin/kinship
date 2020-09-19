# frozen_string_literal: true

require "capybara/rails"
require "capybara/rspec"
require "capybara/apparition"

Capybara.javascript_driver = :apparition
Capybara.default_max_wait_time = 7
Capybara.app_host = "http://localhost:3001"
Capybara.server = :puma, { Silent: true, Threads: "8:8" }
Capybara.server_host = "localhost"
Capybara.server_port = "3001"

Capybara.register_driver :apparition do |app|
  Capybara::Apparition::Driver.new(app,
                                   js_errors: false,
                                   # Use for debugging
                                   headless: ENV["HEADLESS_MODE_DISABLED"] != "true",
                                   # Set to HD, some items are overlapping on smaller screens
                                   window_size: [1280, 720],
                                   browser_options: [
                                     :no_sandbox,
                                     :disable_web_security,
                                     :disable_extensions,
                                     :disable_dev_shm_usage,
                                     :disable_gpu,
                                     { disable_features: "VizDisplayCompositor" }
                                   ])
end

RSpec.configure do |config|
  config.before(:each, mobile: true) do
    page.driver.header(
      "USER_AGENT",
      "Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 " \
        "(KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1"
    )
  end

  config.before(:each, js: true) do
    # Whitelist which URLs are allowed from the browser on acceptance tests.
    # That helps making acceptance tests faster and independent from the internet.
    # https://github.com/twalpole/apparition#url-blacklisting--whitelisting
    page.driver.browser.url_whitelist = [
      # Capybara server (main server)
      "http://localhost:3001/"
    ]
  end

  # Opens an html/screenshot on JS feature specs that fail
  config.after(:each, js: true) do |example|
    if example.exception.present? && !ENV["IGNORE_ERRORS_SCREENSHOTS"]
      meta = example.metadata
      name = "test-failure-#{File.basename(meta[:file_path])}-" \
        "#{meta[:line_number]}-#{meta[:scoped_id].parameterize}"

      driver = Capybara.current_session.driver
      window = Capybara.current_session.current_window
      total_width = driver.evaluate_script("document.body.offsetWidth")
      total_height = driver.evaluate_script("document.body.scrollHeight")
      window.resize_to(total_width, total_height)

      save_and_open_screenshot("#{name}.png", full: true) # rubocop:disable Lint/Debugger
      # save_and_open_page("#{name}.html")
    end
  end
end
