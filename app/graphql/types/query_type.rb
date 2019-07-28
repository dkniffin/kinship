# frozen_string_literal: true

class QueryType < TypeBase
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :individual, resolver: IndividualResolver
  field :birth, resolver: BirthResolver
  field :relationship, resolver: RelationshipResolver
  field :source, resolver: SourceResolver
  field :citation, resolver: CitationResolver
end
