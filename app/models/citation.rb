# frozen_string_literal: true

# == Schema Information
#
# Table name: citations
#
#  citable_id       :bigint(8)
#  citable_type     :string
#  citation_details :string
#  created_at       :datetime         not null
#  id               :bigint(8)        not null, primary key
#  source_id        :bigint(8)
#  updated_at       :datetime         not null
#

class Citation < ApplicationRecord
  belongs_to :source
  belongs_to :citable, polymorphic: true
end
