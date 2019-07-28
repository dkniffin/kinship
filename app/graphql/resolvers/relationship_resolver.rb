# frozen_string_literal: true

class RelationshipResolver < ResolverBase
  type RelationshipType, null: false

  argument :id, ID, required: true

  def resolve(id: nil)
    ::Relationship.find(id)
  end
end
