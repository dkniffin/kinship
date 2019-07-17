# frozen_string_literal: true

module Resolvers
  class Relationship < Resolvers::ResolverBase
    type Types::Relationship, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
      ::Relationship.find(id)
    end
  end
end
