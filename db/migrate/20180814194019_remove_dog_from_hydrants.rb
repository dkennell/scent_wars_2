class RemoveDogFromHydrants < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :hydrants, column: :dog_id
  end
end
