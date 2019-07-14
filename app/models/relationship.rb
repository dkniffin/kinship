# frozen_string_literal: true

# == Schema Information
#
# Table name: relationships
#
#  created_at        :datetime         not null
#  id                :bigint(8)        not null, primary key
#  individual_one_id :bigint(8)
#  individual_two_id :bigint(8)
#  marriage_date     :datetime
#  notes             :text
#  updated_at        :datetime         not null
#

class Relationship < ApplicationRecord
  belongs_to :individual_one, class_name: "Individual"
  belongs_to :individual_two, class_name: "Individual"
end
