class UserSessionsController < ApplicationController
    def new
        @user_session = UserSession.new(session)
    end

    def create
        @user_session = UserSession.new(session, params[:user_session])
        if @user_session.authenticate!
            redirect_to root_path, notice: 'Login has been successfully!'
        else
            render :new
        end
    end

    def destroy
        user_session.destroy
        redirect_to root_path, notice: 'Logout successfully. See you!'
    end

end