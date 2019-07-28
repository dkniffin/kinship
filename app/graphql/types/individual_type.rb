# frozen_string_literal: true

class IndividualType < TypeBase
  description "A person"

  field :id, ID, null: false
  field :created_at, String, null: false
  field :updated_at, String, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :sex, String, null: true
  field :children, [IndividualType], null: false
  field :birth, BirthType, null: true
  field :father, IndividualType, null: true
  field :mother, IndividualType, null: true
  field :relationships, [RelationshipType], null: false
  field :sources, [SourceType], null: false
  field :citations, [CitationType], null: false
end
