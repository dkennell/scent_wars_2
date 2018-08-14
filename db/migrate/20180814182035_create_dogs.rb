class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :level
      t.integer :points
      t.integer :stamina

      t.timestamps
    end
  end
end
