class AddRefsToDog < ActiveRecord::Migration
  def change
    add_reference :dogs, :location, index: true, foreign_key: true
    add_reference :dogs, :shelter, index: true, foreign_key: true
  end
end
