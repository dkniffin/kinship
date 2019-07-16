# frozen_string_literal: true

module Types
  class Relationship < Types::BaseObject
    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :individual_one, Individual, null: true
    field :individual_two, Individual, null: true
  end
end
