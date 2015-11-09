class AddRefsToShelter < ActiveRecord::Migration
  def change
    add_reference :shelters, :location, index: true, foreign_key: true
  end
end
