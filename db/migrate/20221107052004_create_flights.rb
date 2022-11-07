class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :code
      t.datetime :departure_time
      t.datetime :arrival_time
      t.decimal :duration
      t.integer :ticket_price

      t.timestamps
    end
  end
end
