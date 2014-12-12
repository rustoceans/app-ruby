class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user,
                notice: 'Successfully updated!'
        else
            render action: :edit
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            # flash[:notice] = 'Successfully created!'
            redirect_to @user,
                        notice: 'Successfully created!'
        else
            render action: :new
        end
    end

    private

    def user_params
        params.
            require(:user).
            permit(:email, :full_name, :location, :password, :password_confirmation, :bio)
    end

end