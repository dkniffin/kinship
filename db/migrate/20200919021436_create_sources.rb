# frozen_string_literal: true

class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :source_info
      t.string :name

      t.timestamps
    end
  end
end
