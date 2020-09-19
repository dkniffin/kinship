# frozen_string_literal: true

require "rails_helper"

RSpec.describe Individual, type: :model do
  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:sex) }

  it { is_expected.to have_one(:birth) }
  # have_many doesn't work here because of the scope
  it { is_expected.to respond_to(:children_births) }
  it { is_expected.to have_many(:children) }
  it { is_expected.to have_one(:father) }
  it { is_expected.to have_one(:mother) }
  # have_many doesn't work here because of the scope
  it { is_expected.to respond_to(:relationships) }

  it_behaves_like "a citable object"
end
