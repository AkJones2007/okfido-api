class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :dob, :bio, :size, :location, :shelter, :breeds, :colors

  has_one :location
  has_one :shelter
  has_many :breeds
  has_many :colors
end
