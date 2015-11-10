class AddUniquenessToBreedMix < ActiveRecord::Migration
  def change
    add_index :breed_mixes, [:dog_id, :breed_id], unique: true
  end
end
