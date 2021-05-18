class PublisherSerializer < ActiveModel::Serializer
  attributes :id, :name, :established, :gamestore

  has_many :games
end
