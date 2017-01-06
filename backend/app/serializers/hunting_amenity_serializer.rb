class HuntingAmenitySerializer < ActiveModel::Serializer
  attributes :id, :food, :lodging, :gear, :ammo, :guns, :vehicles
end
