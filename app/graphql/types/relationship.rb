# frozen_string_literal: true

module Types
  class Relationship < Types::BaseObject
    description "A relationship between two individuals (eg a marriage)"

    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :individual_one, Individual, null: true
    field :individual_two, Individual, null: true
    field :sources, [Types::Source], null: false
    field :citations, [Types::Citation], null: false
  end
end
