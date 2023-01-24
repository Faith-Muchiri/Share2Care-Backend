class ConsumerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :password, :role
end
