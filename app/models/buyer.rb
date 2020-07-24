class Buyer < ApplicationRecord
    validates :propertyType, presence: true
    validates :propertyValue, presence: true
    validates :timeFrame, presence: true
  
    
    validates :state, presence: true
    
    validates :zipCode, presence: true
    validates :fullName, presence: true
    validates :phoneNumber, presence: true
end
