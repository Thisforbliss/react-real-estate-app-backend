class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :propertyType, :propertyValue, :timeFrame, 
   :state, :city, :zipCode, :fullName, :phoneNumber
end
