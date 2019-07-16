# frozen_string_literal: true

module Types
  class Individual < Types::BaseObject
    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :sex, String, null: true
    field :children, [Types::Individual], null: false
    field :birth, Types::Birth, null: true
    field :father, Types::Individual, null: true
    field :mother, Types::Individual, null: true
    field :relationships, [Types::Relationship], null: false
  end
end
