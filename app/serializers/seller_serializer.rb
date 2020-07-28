class SellerSerializer < ActiveModel::Serializer
  attributes :id, :propertyType, :propertyValue, :timeFrame, 
  :state, :city, :zipCode, :fullName, :phoneNumber, :streetAddress, :unit
end
