class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.string :propertyType
      t.float :propertyValue
      t.string :timeFrame
      t.string :streetAddress
      t.string :unit
      t.string :state
      t.string :city
      t.integer :zipCode
      t.string :fullName
      t.string :phoneNumber
    
      t.timestamps
    end
  end
end
