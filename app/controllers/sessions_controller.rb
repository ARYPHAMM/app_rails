class SessionsController < ApplicationController
	def create
		# # render 'new'
		# debugger
		user = User.find_by(username: params[:session][:username].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
           flash[:secces] = "you have seccessfully logged in"
           redirect_to user_path(user)
		else
			flash.now[:danger] = "there was something wrong with your login information"
			render 'new'

		end
	end
	def destroy
          session[:user_id] = nil
          flash[:success] = "You have logged out"
          redirect_to root_path
	end
	def new 

	end
end