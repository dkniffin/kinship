# frozen_string_literal: true

class CreateCitations < ActiveRecord::Migration[6.0]
  def change
    create_table :citations do |t|
      t.references :source, foreign_key: true
      t.references :citable, polymorphic: true
      t.string :citation_details

      t.timestamps
    end
  end
end
