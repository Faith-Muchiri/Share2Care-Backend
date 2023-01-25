class AdminSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password,  :role
  has_many :donations
end
