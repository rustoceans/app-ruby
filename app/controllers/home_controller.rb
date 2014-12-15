class HomeController < ApplicationController
    def index
        if user_signed_in?
            @user = User.find(current_user)
        end
    end
end