# frozen_string_literal: true

# == Schema Information
#
# Table name: births
#
#  created_at    :datetime         not null
#  father_id     :bigint(8)
#  id            :bigint(8)        not null, primary key
#  individual_id :bigint(8)
#  mother_id     :bigint(8)
#  notes         :text
#  occurred_at   :datetime
#  updated_at    :datetime         not null
#

class Birth < ApplicationRecord
  include Citable
  belongs_to :individual
  belongs_to :father, class_name: "Individual"
  belongs_to :mother, class_name: "Individual"
end
