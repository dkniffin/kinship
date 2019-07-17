# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :individual, Types::Individual, null: false do
      argument :id, ID, required: true
    end

    def individual(id:)
      ::Individual.find(id)
    end

    field :birth, Types::Birth, null: false do
      argument :id, ID, required: true
    end

    def birth(id:)
      ::Birth.find(id)
    end

    field :relationship, Types::Relationship, null: false do
      argument :id, ID, required: true
    end

    def relationship(id:)
      ::Relationship.find(id)
    end

    field :source, Types::Source, null: false do
      argument :id, ID, required: true
    end

    def source(id:)
      ::Source.find(id)
    end

    field :citation, Types::Citation, null: false do
      argument :id, ID, required: true
    end

    def citation(id:)
      ::Citation.find(id)
    end
  end
end
