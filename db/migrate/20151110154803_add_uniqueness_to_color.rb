class AddUniquenessToColor < ActiveRecord::Migration
  def change
    add_index :colors, :name, unique: true
  end
end
