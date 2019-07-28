# frozen_string_literal: true

class BirthResolver < ResolverBase
  type BirthType, null: false

  argument :id, ID, required: true

  def resolve(id: nil)
    ::Birth.find(id)
  end
end
