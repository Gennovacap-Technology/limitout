class HuntingPropertySerializer < ActiveModel::Serializer
  attributes :id, :description, :address, :city, :state, :acreage, :vegetation,
  :water_sources, :number_blinds, :blind_types, :feeders, :natural_feeders
end
