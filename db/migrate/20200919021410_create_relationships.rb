# frozen_string_literal: true

class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :individual_one, foreign_key: { to_table: :individuals }
      t.references :individual_two, foreign_key: { to_table: :individuals }
      t.datetime :marriage_date
      t.text :notes

      t.timestamps
    end
  end
end
