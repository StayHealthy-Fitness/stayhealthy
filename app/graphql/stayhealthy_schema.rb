# frozen_string_literal: true

class StayhealthySchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
