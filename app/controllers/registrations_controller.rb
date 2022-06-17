class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController


  def create
    @user = User.new(users_params)
    if @user.save
        redirect_to("users/profile")
    else
        redirect_to "users/new"
    end
end

private
def users_params
    params.require(:user).permit(:name, :email, :password)
end
    private
  
    def sign_up_params
      params.require(:name, :email,:password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:name, :email)
    end
  end