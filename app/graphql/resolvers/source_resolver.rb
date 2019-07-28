# frozen_string_literal: true

class SourceResolver < ResolverBase
  type SourceType, null: false

  argument :id, ID, required: true

  def resolve(id: nil)
    ::Source.find(id)
  end
end
