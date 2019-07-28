# frozen_string_literal: true

class CitableType < GraphQL::Schema::Union
  description "Objects which may be cited"
  possible_types IndividualType, BirthType, RelationshipType

  def self.resolve_type(object)
    "#{object.class}Type".constantize
  end
end
