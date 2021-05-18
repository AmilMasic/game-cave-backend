class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :completed, :genre, :description, :platform, :publisher_id
end
