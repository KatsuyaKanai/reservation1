class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name])
    end
    
   
    
    
    def after_sign_up_path_for(_resource)
        binding.pry
        '/homes/index'
    end
    
    def after_sign_in_path_for(_resource)
        '/users'
    end
    def after_sign_out_path_for(resource)
        '/homes/index'
      end
    def after_logout_path_for(resource)
        binding.pry
        '/homes/index'
    end
    def new
        @user =User.new(params[:id])
    end

    def users_profile
        @user = User.find(params[:id])
    end
   
   

end

