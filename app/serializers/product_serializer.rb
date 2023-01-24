class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :image_url, :farmer_id, :consumer_id
end
