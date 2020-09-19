# frozen_string_literal: true

FactoryBot.define do
  factory :birth do
    occurred_at { "2020-09-18 22:10:51" }
    notes { "MyText" }
    individual { nil }
    father { nil }
    mother { nil }
  end
end
