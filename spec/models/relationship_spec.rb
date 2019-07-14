# frozen_string_literal: true

require "rails_helper"

RSpec.describe Relationship, type: :model do
  it { is_expected.to respond_to(:marriage_date) }
  it { is_expected.to respond_to(:notes) }

  it { is_expected.to belong_to(:individual_one) }
  it { is_expected.to belong_to(:individual_two) }
end
