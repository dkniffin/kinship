# frozen_string_literal: true

require "rails_helper"

describe "GraphQL schema" do
  it "is up to date" do
    current_defn = KinshipSchema.to_definition
    # Can be updated with `bundle exec rails graphql:dump_schema`
    printout_defn = File.read(Rails.root.join("app", "graphql", "schema.graphql"))
    expect(current_defn).to eq(printout_defn)
  end
end
