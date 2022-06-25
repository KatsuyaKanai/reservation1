class ReservationController < ApplicationController
 
  def index
    binding.pry
    @reservations  = Reservation.all

  end
  def new
    
    binding.pry
    @room = Reservation.find(params[:room_id])
    binding.pry
  end
  def show
    @room = Room.find(params[:id])
    binding.pry
    @reservation = Reservation.new
    binding.pry
  end
  def update
  end
  def create
    @reservation = Reservation.new
    binding.pry
    @room = Room.find(params[room_id])
    
    binding.pry
    if @reservation.save
      binding.pry
      redirect_to reservation_path(@reservation)
    end
  end
  
end
