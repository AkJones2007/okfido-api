class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
