# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all

Airport.create([{
  name: "Brisbane",
  code: "BRIS"
},
{
  name: "John F. Kennedy",
  code: "JFK"
},
{
  name: "Los Angeles",
  code: "LAX"
},
{
  name: "Narita",
  code: "NRT"
},
{
  name: "Gold Coast",
  code: "OOL"
}
])

p "Created 5 airports"

Flight.destroy_all

Flight.create([{
  code: "XY322",
  departure_time: "2022-12-18 12:59:59",
  arrival_time: "2022-12-19 12:59:59",
  duration: 3.5,
  ticket_price: 500,
  arrival_airport_id: 1,
  departure_airport_id: 2,
  max_passengers: 200
},
{
  code: "ZZ786",
  departure_time: "2025-12-18 12:59:59",
  arrival_time: "2025-12-19 12:59:59",
  duration: 12,
  ticket_price: 560,
  arrival_airport_id: 3,
  departure_airport_id: 4,
  max_passengers: 200
},
{
  code: "UU696",
  departure_time: "2023-1-18 12:59:59",
  arrival_time: "2023-1-19 14:59:59",
  duration: 3.3,
  ticket_price: 340,
  arrival_airport_id: 5,
  departure_airport_id: 1,
  max_passengers: 200
},
{
  code: "PP888",
  departure_time: "2022-12-18 12:59:59",
  arrival_time: "2022-12-18 13:30:00",
  duration: 8.33,
  ticket_price: 233,
  arrival_airport_id: 4,
  departure_airport_id: 2,
  max_passengers: 200
},
{
  code: "TRE45",
  departure_time: "2022-2-10 10:00:00",
  arrival_time: "2022-2-10 10:40:59",
  duration: 3.67,
  ticket_price: 898,
  arrival_airport_id: 3,
  departure_airport_id: 1,
  max_passengers: 200
},
{
  code: "RET46",
  departure_time: "2022-2-10 10:00:00",
  arrival_time: "2022-2-10 10:40:59",
  duration: 3.67,
  ticket_price: 898,
  arrival_airport_id: 3,
  departure_airport_id: 1,
  max_passengers: 200
}
])

p "Created 6 flights"

Booking.destroy_all

Booking.create([
  {
    num_tickets: 1,
    flight_id: 1
  },
  {
    num_tickets: 3,
    flight_id: 3
  },
  {
    num_tickets: 4,
    flight_id: 4
  },
  {
    num_tickets: 2,
    flight_id: 2
  }
])

p "Created 4 bookings"

Passenger.destroy_all

Booking.find(3).passengers = Passenger.create([
  {
    name: "Brett",
    email: "b@gmail.com"
  },
  {
    name: "Vika",
    email: "v@gmail.com"
  },
  {
    name: "Dodd",
    email: "d@gmail.com"
  },
  {
    name: "Kazuya",
    email: "k@gmail.com"
  }
])

Booking.first.passengers << Passenger.first

(2..4).each do |i|
  Booking.find(2).passengers << Passenger.find(i)
end

(1..2).each do |i|
  Booking.find(4).passengers << Passenger.find(i)
end

p "Created 4 passengers and associated with Bookings"