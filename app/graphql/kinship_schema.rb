# frozen_string_literal: true

class KinshipSchema < GraphQL::Schema
  mutation(MutationType)
  query(QueryType)
end
