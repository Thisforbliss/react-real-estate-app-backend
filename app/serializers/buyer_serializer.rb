class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :propertyType, :propertyValue, :timeFrame, 
   :state, :city, :zipcode, :fullName, phoneNumber
end
