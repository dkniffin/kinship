# frozen_string_literal: true

class SourceType < TypeBase
  description "A source of information (eg, Birth Certificate, Census, etc)"

  field :id, ID, null: false
  field :created_at, String, null: false
  field :updated_at, String, null: false
  field :name, String, null: false
  field :source_info, String, null: true
end
