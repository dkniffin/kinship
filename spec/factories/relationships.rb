# frozen_string_literal: true

FactoryBot.define do
  factory :relationship do
    individual_one { nil }
    individual_two { nil }
    relationship_type { 1 }
    marriage_date { "2019-07-13 21:36:09" }
    notes { "MyText" }
  end
end
