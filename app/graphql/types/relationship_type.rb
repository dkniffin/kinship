# frozen_string_literal: true

class RelationshipType < TypeBase
  description "A relationship between two individuals (eg a marriage)"

  field :id, ID, null: false
  field :created_at, String, null: false
  field :updated_at, String, null: false
  field :individual_one, IndividualType, null: true
  field :individual_two, IndividualType, null: true
  field :sources, [SourceType], null: false
  field :citations, [CitationType], null: false
end
