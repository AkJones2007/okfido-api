class AddRefsToBreedMix < ActiveRecord::Migration
  def change
    add_reference :breed_mixes, :dog, index: true, foreign_key: true
    add_reference :breed_mixes, :breed, index: true, foreign_key: true
  end
end
