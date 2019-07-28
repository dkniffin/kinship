# frozen_string_literal: true

class CitationType < TypeBase
  description "A connection between an event or fact and it's source"

  field :id, ID, null: false
  field :created_at, String, null: false
  field :updated_at, String, null: false
  field :citation_details, String, null: true
  field :citable, CitableType, null: false
  field :source, SourceType, null: false
end
