# One-way flight booking site

1. Enter desired dates / airports and click “Search”
2. Choose from among a list of available flights
3. Enter passenger information for all passengers
4. Enter billing information

## DB architecture
### Airport
- name STRING
- code STRING

- has_many :arriving_flights, class: "Flight",
                              foreign_key: "id"
- has_many :departing_flights, class: "Flight",
                              foreign_key: "id"

### Flight
- code STRING
- departure_time DATETIME
- arrival_time DATETIME
- ticket_price INTEGER
- origin FOREIGN KEY
- destination FOREIGN KEY

- belongs_to :origin, class: "Airport",
                      foreign_key: "id"
- belongs_to :destination, class: "Airport",
                           foreign_key: "id"
- has_many :passengers, through: :passenger_list

### Passenger
- name STRING

- has_many :flights, through: :passenger_list

### Passenger_list
- passenger_id FOREIGN KEY
- flight_id FOREIGN KEY

- belongs_to :passenger
- belongs_to :flight