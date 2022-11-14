# One-way flight booking site

1. Enter desired dates / airports and click “Search”
2. Choose from among a list of available flights
3. Enter passenger information for all passengers
4. Enter billing information

## DB architecture
### Airport
- name STRING
- code STRING

- has_many :arriving_flights, class_name: "Flight",
                              foreign_key: "arrival_airport_id"
- has_many :departing_flights, class_name: "Flight",
                              foreign_key: "departure_airport_id"

### Flight
- code STRING
- departure_time DATETIME
- arrival_time DATETIME
- ticket_price INTEGER
- seats INTEGER
- departure_airport FOREIGN KEY
- arrival_airport FOREIGN KEY

- belongs_to :departure_airport, class_name: "Airport"
- belongs_to :arrival_airport, class_name: "Airport"
- has_many :passengers, through: :bookings

### Passenger
- name STRING
- email STRING

- has_many :flights, through: :passenger_list

### Bookings
- passenger_id FOREIGN KEY
- flight_id FOREIGN KEY
- num_tickets INTEGER

- belongs_to :passenger
- belongs_to :flight