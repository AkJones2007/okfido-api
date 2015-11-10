class AddGenderColumnToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :gender, :string
  end
end
