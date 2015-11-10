class Dog < ActiveRecord::Base

  # Has Many...
  has_many :breed_mixes
  has_many :color_mixes
  has_many :favorites
  has_many :dog_photos

  # Has Many Through...
  has_many :breeds, through: :breed_mixes
  has_many :colors, through: :color_mixes

  # Belongs to...
  belongs_to :location
  belongs_to :shelter

end
