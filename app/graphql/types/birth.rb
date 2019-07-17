# frozen_string_literal: true

module Types
  class Birth < Types::BaseObject
    description "A birth of an individual"

    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :occurred_at, String, null: true
    field :notes, String, null: true
    field :individual, Types::Individual, null: true
    field :mother, Types::Individual, null: true
    field :father, Types::Individual, null: true
    field :sources, [Types::Source], null: false
    field :citations, [Types::Citation], null: false
  end
end
