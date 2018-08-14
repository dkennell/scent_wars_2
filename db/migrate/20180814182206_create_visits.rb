class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.references :dog, foreign_key: true
      t.references :hydrant, foreign_key: true
      t.integer :stamina_used

      t.timestamps
    end
  end
end
