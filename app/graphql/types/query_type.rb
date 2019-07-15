# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :individual, Types::IndividualType, null: false do
      description "An individual person"
      argument :id, ID, required: true
    end

    def individual(id:)
      Individual.find(id)
    end
  end
end
