# frozen_string_literal: true

module Resolvers
  class Source < Resolvers::ResolverBase
    type Types::Source, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
      ::Source.find(id)
    end
  end
end
