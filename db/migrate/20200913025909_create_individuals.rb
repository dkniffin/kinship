class CreateIndividuals < ActiveRecord::Migration[6.0]
  def change
    create_table :individuals do |t|
      t.string :first_name
      t.string :last_name
      t.integer :sex

      t.timestamps
    end
  end
end
