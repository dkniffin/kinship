# frozen_string_literal: true

class AddJtiToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :jti, :string
  end
end
