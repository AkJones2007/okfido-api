class AddUniquenessToColorMux < ActiveRecord::Migration
  def change
    add_index :color_mixes, [:dog_id, :color_id], unique: true
  end
end
