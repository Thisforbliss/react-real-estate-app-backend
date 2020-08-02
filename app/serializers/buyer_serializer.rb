class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :propertyType, :propertyValue, :timeFrame, 
   :state, :city, :zipCode, :fullName, :phoneNumber

   def serializable_hash(adapter_options = nil, options = {}, adapter_instance = self.class.serialization_adapter_instance)
   hash = super
   hash.each { |key, value| hash.delete(key) if value.nil? }
   hash
 end


end
