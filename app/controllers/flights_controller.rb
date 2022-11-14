class FlightsController < ApplicationController
  def index
    if params.has_key?(:departure_date)
      @flights = Flight.where(
        departure_time: params[:departure_date], 
        departure_airport_id: params[:departure_airport_id],
        arrival_airport_id: params[:arrival_airport_id])
      @num_tickets = params[:num_tickets]
    else
      @flights = Flight.all
    end
  end
end
