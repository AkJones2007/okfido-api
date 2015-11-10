class CreateDogPhotos < ActiveRecord::Migration
  def change
    create_table :dog_photos do |t|
      t.string :url
      t.string :caption

      t.timestamps null: false
    end
  end
end
