class AddRefsToFavorite < ActiveRecord::Migration
  def change
    add_reference :favorites, :user, index: true, foreign_key: true
    add_reference :favorites, :dog, index: true, foreign_key: true
  end
end
