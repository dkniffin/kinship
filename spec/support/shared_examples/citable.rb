# frozen_string_literal: true

shared_examples_for "a citable object" do
  it { is_expected.to have_many(:citations) }
  it { is_expected.to have_many(:sources) }
end
