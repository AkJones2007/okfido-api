class Color < ActiveRecord::Base
  has_many :color_mixes
  has_many :dogs, through: :color_mixes
end
