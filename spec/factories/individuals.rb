# frozen_string_literal: true

FactoryBot.define do
  factory :individual do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    sex { Individual.sexes.sample }
  end
end
