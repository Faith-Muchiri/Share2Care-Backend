class ConsumerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :role
  has_many :donations
  has_many :products
  # has_many :farmers, through: :products
end
