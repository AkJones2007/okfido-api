class AddRefsToColorMix < ActiveRecord::Migration
  def change
    add_reference :color_mixes, :dog, index: true, foreign_key: true
    add_reference :color_mixes, :color, index: true, foreign_key: true
  end
end
