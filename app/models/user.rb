class User < ActiveRecord::Base
  include Authentication

  has_many :favorites

  has_many :dogs, through: :favorites

  belongs_to :location

end
