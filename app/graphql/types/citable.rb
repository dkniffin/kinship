# frozen_string_literal: true

module Types
  class Citable < Types::BaseUnion
    description "Objects which may be cited"
    possible_types Types::Individual, Types::Birth, Types::Relationship

    def self.resolve_type(object)
      "Types::#{object.class}".constantize
    end
  end
end
