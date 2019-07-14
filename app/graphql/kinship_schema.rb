# frozen_string_literal: true

class KinshipSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
