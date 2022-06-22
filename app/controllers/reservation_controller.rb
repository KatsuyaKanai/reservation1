class ReservationController < ApplicationController
 
  def index
  end
  def new
    @reservation = Reservation.new
    @room = Room.find_by(params[:id])
    date = params[:date]
  end

end
