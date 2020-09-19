# frozen_string_literal: true

module Citable
  extend ActiveSupport::Concern

  included do
    has_many :citations, dependent: :destroy, as: :citable
    has_many :sources, through: :citations
  end
end
