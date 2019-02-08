class UsersController < ApplicationController
before_action :set_user,only: [:edit,:destroy,:update,:show]

def index
 @users = User.all
end

def new
   @user = User.new
end

def create
   # render plain: params[:user].inspect
   @user = User.new(user_params)
   if @user.save
   	   flash[:nontice] = "User was successfully with user name : " + @user.username
       redirect_to user_path (@user)
   else
   	render 'new'
   end
   	#@user.save
   # redirect_to users_show(@user)
end

def destroy
	@user.destroy
	flash[:nontice] = " User was destroy successfully " 
	redirect_to users_path
end

def show

end

def edit

end 

def update

   if @user.update(user_params)
   	   flash[:nontice] = "User was successfully"
       redirect_to user_path (@user)
   else
   	render 'new'
   end
end

	

 private
   def set_user
     @user = User.find(params[:id])
   end

   def user_params
   	params.require(:user).permit(:username,:email,:address)
   end


end
