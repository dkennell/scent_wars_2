class CreateHydrants < ActiveRecord::Migration[5.1]
  def change
    create_table :hydrants do |t|
      t.references :dog, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
