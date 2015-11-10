class Breed < ActiveRecord::Base
  has_many :breed_mixes
  has_many :dogs, through: :breed_mixes
end
