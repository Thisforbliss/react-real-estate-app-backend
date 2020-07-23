class Seller < ApplicationRecord
        validates :propertyType, presence: true
        validates :propertyValue, presence: true
        validates :timeFrame, presence: true
        validates :streetAddress, presence: true
        validates :unit, presence: true
        validates :state, presence: true
        validates :city, presence: true
        validates :zipCode, presence: true
        validates :fullName, presence: true
        validates :phoneNumber, presence: true  
end
