# frozen_string_literal: true

class CitationResolver < ResolverBase
  type CitationType, null: false

  argument :id, ID, required: true

  def resolve(id: nil)
    ::Citation.find(id)
  end
end
