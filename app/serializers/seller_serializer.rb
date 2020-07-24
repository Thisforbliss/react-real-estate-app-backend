class SellerSerializer < ActiveModel::Serializer
  attributes :id, :propertyType, :propertyValue, :timeFrame, 
  :state, :city, :zipcode, :fullName, phoneNumber, :streetAddress, :unit
end
