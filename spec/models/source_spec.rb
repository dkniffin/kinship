# frozen_string_literal: true

require "rails_helper"

RSpec.describe Source, type: :model do
  it { is_expected.to respond_to(:source_info) }
end
