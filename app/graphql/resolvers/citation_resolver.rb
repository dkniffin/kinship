# frozen_string_literal: true

module Resolvers
  class Citation < Resolvers::ResolverBase
    type Types::Citation, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
      ::Citation.find(id)
    end
  end
end
