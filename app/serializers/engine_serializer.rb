class EngineSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description
end
