class Consumer < User
    has_many :products
    has_many :farmers, through: :products
end
