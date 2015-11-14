class ShelterSerializer < ActiveModel::Serializer
  attributes :name, :location

  has_one :location
end
