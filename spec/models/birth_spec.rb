# frozen_string_literal: true

require "rails_helper"

RSpec.describe Birth, type: :model do
  it { is_expected.to respond_to(:occurred_at) }
  it { is_expected.to respond_to(:notes) }

  it { is_expected.to belong_to(:individual) }
  it { is_expected.to belong_to(:father) }
  it { is_expected.to belong_to(:mother) }

  it_behaves_like "a citable object"
end
