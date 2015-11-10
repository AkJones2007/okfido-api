class AddDogRefToDogPhoto < ActiveRecord::Migration
  def change
    add_reference :dog_photos, :dog, index: true, foreign_key: true
  end
end
