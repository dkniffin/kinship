# frozen_string_literal: true

module Types
  class Citation < Types::BaseObject
    description "A connection between an event or fact and it's source"

    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :citation_details, String, null: true
    field :citable, Types::Citable, null: false
    field :source, Types::Source, null: false
  end
end
