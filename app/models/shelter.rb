class Shelter < ActiveRecord::Base
  has_many :dogs
  belongs_to :location
end
