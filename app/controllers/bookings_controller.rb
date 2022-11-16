class BookingsController < ApplicationController
  def new
    @booking = Booking.new(num_tickets: params[:num_tickets], 
                           flight_id: params[:flight_id]
                          )

    @flight = Flight.find(params[:flight_id])
    
    params[:num_tickets].to_i.times do |i|
      @booking.passengers << Passenger.new
    end
  end

  def create
    
  end

  private

  def booking_params
    params.require(:booking).permit(:num_tickets, :flight_id, passengers_attributes: [:name, :email])
  end
end
