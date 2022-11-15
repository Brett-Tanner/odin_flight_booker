class BookingsController < ApplicationController
  def new
    @booking = Booking.new(num_tickets: params[:num_tickets], 
                           flight_id: params[:flight_id]
                          )
    @passenger_list = Array.new(params[:num_tickets], Passenger.new)
  end

  def create
    
  end

  private

  def booking_params
    params.require(:booking).permit(:num_tickets, :flight_id, passengers_attributes: [:name, :email])
  end
end
