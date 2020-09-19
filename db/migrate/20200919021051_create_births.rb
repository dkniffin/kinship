# frozen_string_literal: true

class CreateBirths < ActiveRecord::Migration[6.0]
  def change
    create_table :births do |t|
      t.datetime :occurred_at
      t.text :notes
      t.references :individual, foreign_key: true, index: true
      t.references :father, index: true, foreign_key: { to_table: :individuals }
      t.references :mother, index: true, foreign_key: { to_table: :individuals }

      t.timestamps
    end
  end
end
