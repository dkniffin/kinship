# frozen_string_literal: true

module Resolvers
  class Individual < Resolvers::ResolverBase
    type Types::Individual, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
      ::Individual.find(id)
    end
  end
end
