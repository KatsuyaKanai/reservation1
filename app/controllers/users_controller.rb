class UsersController < ApplicationController

    def index

    end

    def after_logout_path_for(resource)
        "localhost:3000"
    end
end
