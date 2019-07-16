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
  include Citable
  enum sex: %i[male female]

  has_one :birth, dependent: :destroy
  has_many :children_births, ->(individual) { # rubocop:disable Rails/InverseOf
    unscope(:where).where("mother_id = :id OR father_id = :id", id: individual.id)
  }, class_name: "Birth", dependent: :nullify
  has_many :children, through: :children_births, source: :individual
  has_one :father, through: :birth
  has_one :mother, through: :birth
  has_many :relationships, ->(individual) { # rubocop:disable Rails/InverseOf
    unscope(:where).where("individual_one_id = :id OR individual_two_id = :id", id: individual.id)
  }, class_name: "Relationship", dependent: :nullify
end
