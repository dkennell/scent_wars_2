class RemoveColumnFromHydrants < ActiveRecord::Migration[5.1]
  def change
    remove_column :hydrants, :dog_id
  end
end
