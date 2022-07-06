# create businesses
Business.create(name: "Pretty Salon", location: "New York, NY", number: 1234567890)
Business.create(name: "Eyebrow Central", location: "New Haven, CT", number: 9764443210)
Business.create(name: "Derm Alert", location: "Chicago, IL", number: 8324506606)

# create services
Service.create(name: "Blowout", price: 30)
Service.create(name: "Hair coloring", price: 60)
Service.create(name: "Brow lift", price: 15)
Service.create(name: "Brow coloring", price: 30)
Service.create(name: "Beard treatment", price: 20)
Service.create(name: "Facial", price: 25)
Service.create(name: "Acne treatment", price: 50)

# create technicians
joan = Technician.create(name: "Joan", business_id: 1)
toby = Technician.create(name: "Toby", business_id: 1)
sam = Technician.create(name: "Sam", business_id: 1)
jessica = Technician.create(name: "Jessica", business_id: 2)
james = Technician.create(name: "James", business_id: 2)
fran = Technician.create(name: "Fran", business_id: 2)
pete = Technician.create(name: "Pete", business_id: 3)
wyatt = Technician.create(name: "Wyatt", business_id: 3)

# create technician availability
AvailableTime.create(time: DateTime.now, technician: joan)
AvailableTime.create(time: DateTime.now, technician: toby)
AvailableTime.create(time: DateTime.now, technician: sam)
AvailableTime.create(time: DateTime.now, technician: jessica)
AvailableTime.create(time: DateTime.now, technician: james)
AvailableTime.create(time: DateTime.now, technician: fran)
AvailableTime.create(time: DateTime.now, technician: pete)
AvailableTime.create(time: DateTime.now, technician: wyatt)

# create offers
Offer.create(technician_id: 1, service_id: 1)
Offer.create(technician_id: 1, service_id: 2)
Offer.create(technician_id: 2, service_id: 2)
Offer.create(technician_id: 3, service_id: 1)
Offer.create(technician_id: 4, service_id: 3)
Offer.create(technician_id: 4, service_id: 4)
Offer.create(technician_id: 5, service_id: 3)
Offer.create(technician_id: 5, service_id: 4)
Offer.create(technician_id: 6, service_id: 4)
Offer.create(technician_id: 7, service_id: 6)
Offer.create(technician_id: 7, service_id: 7)
Offer.create(technician_id: 8, service_id: 6)
Offer.create(technician_id: 8, service_id: 7)
