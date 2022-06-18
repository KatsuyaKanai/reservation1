class ApplicationController < ActionController::Base

    
   
    
    
    def after_sign_up_path_for(resource)
        binding.pry
        '/homes/index'
    end
    
    def after_sign_in_path_for(resource)
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

