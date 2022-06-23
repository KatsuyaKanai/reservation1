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
    @room = current_user.rooms.build(room_params)
    @room = Room.new(params.require(:room).permit(:id, :room_name,:room_introduction,:room_price,:room_address,:room_image))
    if @room.save!
      flash[:notice] = "登録しました"
      binding.pry
      redirect_to room_path(@room)
    else
      flash[:notice] = "失敗しました"
      render "new"
   end
  end

  def show
    @room = Room.find(params[:id])
  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def location
  end

  def update

    @room = Room.find(params[:id])
    if @room.update(params.require(:room).permit(:id,:start_date,:end_date,:person_num))
      flash[:notice]= "保存しました。"
      binding.pry
      redirect_to new_reservation_path(room: room_params)
      binding.pry
    else
      flash[:alert]= "問題が発生しました。"
    end
  end


  def list_params
    params.require(:user).permit(:name, :email, :image)
  end

  private
  
    def room_params
      params.require(:room).permit(:id, :user_id, :room_name, :room_introduction, :room_price, :room_address, :room_image, :start_date, :end_date, :person_num)
    end


end
