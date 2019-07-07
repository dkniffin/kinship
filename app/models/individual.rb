# frozen_string_literal: true

# == Schema Information
#
# Table name: individuals
#
#  created_at :datetime         not null
#  first_name :string
#  id         :bigint(8)        not null, primary key
#  last_name  :string
#  sex        :integer
#  updated_at :datetime         not null
#

class Individual < ApplicationRecord
  enum sex: %i[male female]
end
