class AddSeatsToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :max_passengers, :integer
  end
end
