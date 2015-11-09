class CreateBreedMixes < ActiveRecord::Migration
  def change
    create_table :breed_mixes do |t|

      t.timestamps null: false
    end
  end
end
