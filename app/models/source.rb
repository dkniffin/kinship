# frozen_string_literal: true

# == Schema Information
#
# Table name: sources
#
#  created_at  :datetime         not null
#  id          :bigint(8)        not null, primary key
#  source_info :string
#  updated_at  :datetime         not null
#

class Source < ApplicationRecord
end
