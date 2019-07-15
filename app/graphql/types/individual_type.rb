# frozen_string_literal: true

module Types
  class IndividualType < Types::BaseObject
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :sex, String, null: true
    field :children, [IndividualType], null: false
  end
end
