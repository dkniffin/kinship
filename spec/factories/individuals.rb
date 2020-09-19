# frozen_string_literal: true

FactoryBot.define do
  factory :individual do
    first_name { "MyString" }
    last_name { "MyString" }
    sex { 1 }
  end
end
