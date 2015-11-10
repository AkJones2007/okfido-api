class AddHexCodeColumnToColor < ActiveRecord::Migration
  def change
    add_column :colors, :hex_code, :string
  end
end
