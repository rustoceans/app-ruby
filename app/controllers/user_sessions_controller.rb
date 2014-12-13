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
		# do something...
	end

	# def initialize(session, attributes={})
	# 	@session = session
	# 	@email = attributes[:email]
	# 	@password = attributes[:password]
	# end

	# def authenticate!
	# 	user = User.authenticate(@email, @password)
	# 	if user.present?
	# 		store(user)
	# 	else
	# 		errors.add(:base, :invalid_login)
	# 		false
	# 	end
	# end

	# def strore(user)
	# 	@session[:user_id] = user.id
	# end

end