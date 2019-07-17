# frozen_string_literal: true

module Resolvers
  class Birth < Resolvers::ResolverBase
    type Types::Birth, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
      ::Birth.find(id)
    end
  end
end
