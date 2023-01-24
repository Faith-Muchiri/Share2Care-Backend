class ConsumerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :password, :role
  has_many :donations
end
