# frozen_string_literal: true

require "rails_helper"

RSpec.describe Individual, type: :model do
  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:sex) }
end
