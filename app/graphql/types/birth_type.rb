# frozen_string_literal: true

class BirthType < TypeBase
  description "A birth of an individual"

  field :id, ID, null: false
  field :created_at, String, null: false
  field :updated_at, String, null: false
  field :occurred_at, String, null: true
  field :notes, String, null: true
  field :individual, IndividualType, null: true
  field :mother, IndividualType, null: true
  field :father, IndividualType, null: true
  field :sources, [SourceType], null: false
  field :citations, [CitationType], null: false
end
