class ReservationController < ApplicationController
 
  def room_id
    @room.id
  end

  def index
    @reservations = Reservation.all.includes(:room)
    @rooms = Room.all
    binding.pry
  end
  def new
    binding.pry
    @reservation = Reservation.new(reservation_params)
    binding.pry
    @reservation.user_id = current_user.id
    binding.pry
    @room = Room.find(params[:room_id])
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservation.user_id = current_user.id
    @room = Room.find(@reservation.room_id)
  end

  def update
  end
  def create
    binding.pry
    @reservation = Reservation.new(params.permit(:id,:room_id,:start_date,:end_date,:person_num,:total_price))
    binding.pry
    @reservation.user_id = current_user.id
    binding.pry
    @room = Room.find(params[:room_id])
    @reservation.save
    binding.pry
    redirect_to reservation_path(@reservation)
  end
  private
  
    def room_params
      params.require(:room).permit(:id, :user_id, :room_name, :room_introduction, :room_price, :room_address, :room_image)
      
    end
    #requireでエラー「param is missing or the value is empty」ので不必要？
    def reservation_params
      params.permit(:id,:room_id,:start_date,:end_date,:person_num,:total_price)
    end
  
end
