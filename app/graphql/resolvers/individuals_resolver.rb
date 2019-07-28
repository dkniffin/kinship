# frozen_string_literal: true

class IndividualsResolver < ResolverBase
  type [IndividualType], null: false

  def resolve
    ::Individual.all
  end
end
