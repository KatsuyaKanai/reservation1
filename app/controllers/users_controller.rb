class UsersController < ApplicationController

   
    def index
        @users = User.all
    end

   
    def new
        @user = User.new
        @user = User.find(params[:id])
    end
   
    def show
        @user = User.find(params[:id])
    end
    

    def after_new_user_session_path_for(resource)
        redirect_to homes_index_path
    end
    def after_new_user_registration_path_for
        redirect_to profile_path(@user)
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:id, :name, :profile, :image))
            flash[:notice]= "保存しました。"
            redirect_to profile_path
        else
            flash[:alert]="問題が発生しました。"
        end

    end


    def create
        
        @user = User.new(params[:id])
        if @user.save
            redirect_to 'homes/index'
        else
            @user = User.new(params[:id])
            ridirect_to 'users/new'
        end
    end


    def users_params
        params.require(:user).permit(:name, :email, :password)
    end


    
end
