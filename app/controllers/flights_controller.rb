class FlightsController < ApplicationController
  def index
    if params.blank?
      @flights = Flight.all
    else
      @flights = Flight.where(departure_time: params[:departure_date], departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id])
    end
  end
end
