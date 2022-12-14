class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  has_many :bookings
  has_many :passengers, through: :bookings

  def self.get_departure_dates
    Flight.all.select(:departure_time).distinct.order(:departure_time)
  end

  def formatted_departure_date
    departure_time.strftime("%d/%m/%Y")
  end

  def booked_seats
    self.bookings.sum("num_tickets")
  end

  def available_seats
    self.max_passengers - self.booked_seats
  end

  # Validate that destination is not same as departure
end