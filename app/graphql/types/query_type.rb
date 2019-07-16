# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :individual, Types::Individual, null: false do
      description "A person"
      argument :id, ID, required: true
    end

    def individual(id:)
      ::Individual.find(id)
    end

    field :birth, Types::Birth, null: false do
      description "A birth of an individual"
      argument :id, ID, required: true
    end

    def birth(id:)
      ::Birth.find(id)
    end

    field :relationship, Types::Relationship, null: false do
      description "A relationship between two individuals (eg a marriage)"
      argument :id, ID, required: true
    end

    def relationship(id:)
      ::Relationship.find(id)
    end
  end
end
