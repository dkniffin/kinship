# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby File.read(File.expand_path(".ruby-version", __dir__)).strip

gem "rails", "~> 6.0.3", ">= 6.0.3.3"

gem "bootsnap", ">= 1.4.2", require: false
gem "devise", "~> 4.6"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "annotate"
  gem "awesome_print"
  gem "brakeman"
  gem "bundler-audit"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "pry-byebug"
  gem "pry-rescue"
  gem "pry-stack_explorer"
  gem "rails-erd"
  gem "rspec-rails"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

group :development do
  gem "bullet"
  gem "letter_opener"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "apparition"
  gem "capybara"
  gem "database_cleaner"
  gem "fuubar"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "site_prism"
  gem "webmock"
end
