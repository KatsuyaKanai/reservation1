class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

   
    
    
    def after_sign_up_path_for(resource)
        binding.pry
        '/homes/index'
    end
    
    def after_sign_in_path_for(resource)
        binding.pry
        profile_path(@user)
    end
    def after_sign_out_path_for(resource)
        '/homes/index'
      end
    def after_logout_path_for(resource)
        binding.pry
        '/homes/index'
    end
    def new
        binding.pry
        @user =User.new(params[:id])
    end

    def users_profile
        binding.pry
        @user = User.find(params[:id])
    end
    
    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
    
   
   

end

