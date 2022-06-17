class RoomsController < ApplicationController
  
  before_action :set_room, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
  end

  

  def create
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

    new_params = room_params

    if @room.update(new_params)
      flash[:notice]= "保存しました。"
    else
      flash[:alert]= "問題が発生しました。"
    end
    redirect_back(fallback_location: request/referner)
  end


  def list_params
    params.require(:user).permit(:name, :email, :image)
  end

  def set_room
  
  end

  def room_params
    params.require(:room).permit(:home_type, :room_type, :accommodate, :bed_room, :bath_room, :listing_name, :summary, :address, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :price, :active)
  end

end
