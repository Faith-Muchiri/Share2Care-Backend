class FarmerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :password, :location, :role
  has_many :donations
end
