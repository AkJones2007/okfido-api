class BreedMix < ActiveRecord::Base
  belongs_to :breed
  belongs_to :dog
end
