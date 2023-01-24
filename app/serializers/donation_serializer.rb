class DonationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product, :quantity, :date_donated, :status
end
