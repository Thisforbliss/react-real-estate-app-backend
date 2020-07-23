# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

seller =  Seller.create(propertyType: 'Single Family', propertyValue: 100000 , 
timeFrame: "2 Weeks", streetAddress: "66 Venice Drive", unit: 2, state: "NY",
city:"Albany", zipCode: 12084, fullName: "Claire Johnson", phoneNumber: '(518) 563-3492'
 )

 buyer =  Buyer.create(propertyType: 'Single Family and Multi Family', propertyValue: 100000 , 
timeFrame: "2 Weeks",  state: "NY",
city:"Albany", zipCode: 12084, fullName: "Malcolm Leake", phoneNumber: '(347) 510-4891'
 )