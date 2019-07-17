# frozen_string_literal: true

require_relative "../resolvers/individual_resolver"
require_relative "../resolvers/birth_resolver"
require_relative "../resolvers/relationship_resolver"
require_relative "../resolvers/source_resolver"
require_relative "../resolvers/citation_resolver"

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :individual, resolver: Resolvers::Individual
    field :birth, resolver: Resolvers::Birth
    field :relationship, resolver: Resolvers::Relationship
    field :source, resolver: Resolvers::Source
    field :citation, resolver: Resolvers::Citation
  end
end
