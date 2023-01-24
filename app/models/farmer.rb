class Farmer < User
    has_many :products
    has_many :consumers, through: :products
end
