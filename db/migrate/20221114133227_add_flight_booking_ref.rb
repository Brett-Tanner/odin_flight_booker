class AddFlightBookingRef < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight, null: false, index: true
  end
end
