class UsersController < ApplicationController

    
    def index
        @users = User.all
    end

   
    def new
        @user = User.new
    end
    def create
        @user = User.find(params[:id])
    end
    def users_profile
        @user = User.find(params[:id])
    end
    def show
        @user = User.find(params[:id])
    end
    

    def after_sign_up_path_for(resource)
        binding.pry
        '/homes/index'
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
