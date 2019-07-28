# frozen_string_literal: true

class IndividualResolver < ResolverBase
  type IndividualType, null: false

  argument :id, ID, required: true

  def resolve(id: nil)
    ::Individual.find(id)
  end
end
