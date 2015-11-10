class AddUniquenessToBreed < ActiveRecord::Migration
  def change
    add_index :breeds, :name, unique: true
  end
end
