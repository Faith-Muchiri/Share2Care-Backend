class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :farmer_id, :consumer_id
end
