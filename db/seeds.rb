# create businesses
ps = Business.create(name: "Pretty Salon", location: "New York, NY", number: 1234567890)
ec = Business.create(name: "Eyebrow Central", location: "New Haven, CT", number: 9764443210)
da = Business.create(name: "Derm Alert", location: "Chicago, IL", number: 8324506606)

# create services
Service.create(name: "Blowout", price: 30)
Service.create(name: "Hair coloring", price: 60)
Service.create(name: "Regular cut", price: 25)
Service.create(name: "Brow lift", price: 15)
Service.create(name: "Brow coloring", price: 30)
Service.create(name: "Beard treatment", price: 20)
Service.create(name: "Regular pluck", price: 10)
Service.create(name: "Facial", price: 25)
Service.create(name: "Acne treatment", price: 50)
Service.create(name: "Annual checkup", price: 25)

# create technicians
joan = Technician.create(name: "Joan", business: ps)
toby = Technician.create(name: "Toby", business: ps)
sam = Technician.create(name: "Sam", business: ps)
jessica = Technician.create(name: "Jessica M.", business: ec)
james = Technician.create(name: "James D.", business: ec)
fran = Technician.create(name: "Fran S.", business: ec)
pete = Technician.create(name: "Dr. Pete Strauss", business: da)
wyatt = Technician.create(name: "Dr. Wyatt Bloom", business: da)
barbara = Technician.create(name: "NP Barbara Opp", business: da)

# create technician availability
Technician.all.each do |t|
    5.times do |i|
        t.available_times << AvailableTime.create(time: DateTime.now + i.hour)
    end
end

# create offers
Offer.create(technician_id: 1, service_id: 1)
Offer.create(technician_id: 1, service_id: 2)
Offer.create(technician_id: 1, service_id: 3)
Offer.create(technician_id: 2, service_id: 2)
Offer.create(technician_id: 2, service_id: 3)
Offer.create(technician_id: 3, service_id: 1)
Offer.create(technician_id: 4, service_id: 4)
Offer.create(technician_id: 4, service_id: 5)
Offer.create(technician_id: 5, service_id: 5)
Offer.create(technician_id: 5, service_id: 6)
Offer.create(technician_id: 5, service_id: 7)
Offer.create(technician_id: 6, service_id: 5)
Offer.create(technician_id: 6, service_id: 7)
Offer.create(technician_id: 7, service_id: 8)
Offer.create(technician_id: 7, service_id: 9)
Offer.create(technician_id: 8, service_id: 8)
Offer.create(technician_id: 8, service_id: 9)
Offer.create(technician_id: 8, service_id: 10)
Offer.create(technician_id: 9, service_id: 8)
Offer.create(technician_id: 9, service_id: 10)
