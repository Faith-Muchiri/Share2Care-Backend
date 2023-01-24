class User < ApplicationRecord
  has_secure_password
  self.inheritance_column = :role
   validates :first_name, :last_name, :email, :password, presence: true
end
