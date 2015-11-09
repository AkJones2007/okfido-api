class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :bio
      t.date :dob
      t.integer :size
      t.integer :energy_level
      t.integer :child_friendliness
      t.integer :pet_friendliness
      t.boolean :house_trained
      t.integer :behavior_train_level

      t.timestamps null: false
    end
  end
end
