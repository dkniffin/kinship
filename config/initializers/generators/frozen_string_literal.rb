# frozen_string_literal: true

# Adds a `frozen_string_literal` comment to the top of files created by Rails
# generators.
#
# Originally inspired by:
#   https://gist.github.com/ta1kt0me/6a7058d16621785d4f7038bde6cd3b98
# Modified version for Rails 6 at:
#   https://gist.github.com/thornomad/4e2f0905e2a4a6eefbc4be5772dfd4f7

require "rails/generators/migration"
require "rails/generators/actions/create_migration"
require "rails/generators/named_base"

module AddFrozenStringLiteralComment
  def add_frozen_string_literal_comment(dist)
    return unless File.exist?(dist) && File.extname(dist) == ".rb"

    File.open(dist, "r") do |f|
      body = f.read

      File.open(dist, "w") do |new_f|
        new_f.write("# frozen_string_literal: true\n\n#{body}")
      end
    end
  end
end

module GeneratorPrepend
  include AddFrozenStringLiteralComment

  def invoke!
    res = super
    add_frozen_string_literal_comment(existing_migration)
    res
  end
end

module TemplatePrepend
  include AddFrozenStringLiteralComment

  def template(source, *args, &block)
    res = super
    add_frozen_string_literal_comment(args.first)
    res
  end
end

Rails::Generators::Actions::CreateMigration.prepend GeneratorPrepend
Rails::Generators::NamedBase.prepend TemplatePrepend
