# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]


  def after_sign_up_path_for(resource)
    binding.pry
    '/homes/index'
  end
  def create
    @user = User.new(users_params)
    binding.pry
    if @user.save
        redirect_to ('/users/profile')
    else
        redirect_to ('/homes/index')
    end
  end

private
def users_params
    params.require(:user).permit(:name, :email, :password)
end
  
    def sign_up_params
      params.require(:name, :email,:password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:name, :email)
    end
  
  # GET /resource/sign_in
   #def new
    #super
   #end

  # POST /resource/sign_in
   #def create
    ##end

  # def after_sign_in_path_for(resource)
   # homes_index_path
   #end
  # DELETE /resource/sign_out
   #def destroy
   ##end
   #protected

   #If you have extra params to permit, append them to the sanitizer.
   #def configure_sign_in_params
     #devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
