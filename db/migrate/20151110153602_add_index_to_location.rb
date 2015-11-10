class AddIndexToLocation < ActiveRecord::Migration
  def change
    add_index :locations, [:city, :state], unique: true
  end
end
