class PagesController < ApplicationController
    def home 
        if current_user
            redirect_to user_path(current_user)
        else 
            redirect_to new_login_path
        end
    end
end
