class ReservationController < ApplicationController
 
  def room_id
    @room.id
  end

  def index
    binding.pry

    @reservations = Reservation.all

  end
  def new
    @reservation = Reservation.new(reservation_params)
    binding.pry
    
    @room = Room.find(params[:room_id])
    binding.pry
  end


  
  def show
    @reservation = Reservation.find(params[:id])
    binding.pry
    @room = Room.find(params[:room_id])
    binding.pry
    
  end











  def update
  end
  def create
    @reservation = Reservation.create(reservation_params)
binding.pry
    @room = Room.find(params[:room_id])
    binding.pry
    @reservation.save
      binding.pry
      redirect_to reservation_path(@reservation)
  end
  private
  
    def room_params
      params.require(:room).permit(:id, :user_id, :room_name, :room_introduction, :room_price, :room_address, :room_image)
      
    end
    def reservation_params
      params.permit(:room_id,:start_date,:end_date,:person_num,:total_price)
    end
  
end
