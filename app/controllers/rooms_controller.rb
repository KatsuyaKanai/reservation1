class RoomsController < ApplicationController
  
 # before_action :set_room, except: [:index, :new, :create]
  #before_action :authenticate_user!, except: [:show]

  def user_id
    user_id = @user.id
  end
  
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:id, :user_id, :room_name,:room_introduction,:room_price,:room_address,:room_image))
    @room.user_id = current_user.id
    if @room.save
      flash[:notice] = "登録しました"
      redirect_to room_path(@room)
    else
      flash[:notice] = "失敗しました"
      render "new"
   end
  end

  def show
    @room = Room.find(params[:id])
    binding.pry
  end


  def update
    binding.pry
    @room = Room.find(params[:id])
    binding.pry
    #reservationにrequireは不必要?
    @reservation = Reservation.new(params.permit(:room_id,:start_date,:end_date,:person_num))
    binding.pry
    @reservation.user_id = current_user.id
    @reservation.save
    binding.pry
    flash[:notice]= "保存しました。"
    redirect_to new_reservation_path(reservation_params)
  end
  
  

  private
  
    def room_params
      params.require(:room).permit(:id, :user_id, :room_name, :room_introduction, :room_price, :room_address, :room_image)
      
    end
    #requireでエラー「param is missing or the value is empty」ので不必要？
    def reservation_params
      params.permit(:room_id,:start_date,:end_date,:person_num,:total_price,:commit)
    end
end
