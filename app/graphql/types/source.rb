# frozen_string_literal: true

module Types
  class Source < Types::BaseObject
    description "A source of information (eg, Birth Certificate, Census, etc)"

    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :name, String, null: false
    field :source_info, String, null: true
  end
end
