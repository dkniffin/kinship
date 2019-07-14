# frozen_string_literal: true

FactoryBot.define do
  factory :birth do
    occurred_at { "2019-07-07 08:53:32" }
    notes { "MyText" }
    individual { nil }
    father { nil }
    mother { nil }
  end
end
