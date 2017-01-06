class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_type, :quality, :abundance, :number_animals
end
