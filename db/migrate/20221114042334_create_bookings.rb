class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :num_tickets

      t.timestamps
    end
  end
end
