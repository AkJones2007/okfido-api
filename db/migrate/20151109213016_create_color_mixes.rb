class CreateColorMixes < ActiveRecord::Migration
  def change
    create_table :color_mixes do |t|

      t.timestamps null: false
    end
  end
end
