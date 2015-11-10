class AddUniquenessToShelter < ActiveRecord::Migration
  def change
    add_index :shelters, [:name, :location_id], unique: true
  end
end
