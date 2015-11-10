class AddUniquenessToFavorite < ActiveRecord::Migration
  def change
    add_index :favorites, [:user_id, :dog_id], unique: true
  end
end
