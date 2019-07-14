# frozen_string_literal: true

require "rails_helper"

RSpec.describe Citation, type: :model do
  it { is_expected.to respond_to(:citation_details) }

  it { is_expected.to belong_to(:source) }
  it { is_expected.to belong_to(:citable) }
end
