class ReservationController < ApplicationController
 
  def index
    binding.pry
    @reservations  = Reservation.all

  end
  def new
    @reservation = Reservation.new
    @reservation = @room
    @room = Room.find(params[:room][:id])
    
  end
  def show
    @reservation = @room
    @room = Room.find(params[:id])
    @reservation = Reservation.find(params[:id])
  end
  def update
  end
  def create
    @reservation = Reservation.new
    if @reservation.save
      binding.pry
      redirect_to reservation_path(@reservation)
    end
  end


end
