class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  
  belongs_to :arrival_airport, class_name: "Airport"

  # Validate that destination is not same as departure
end