class UsersController < ApplicationController

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
   	   flash[:nontice] = "User was successfully"
       redirect_to user_path (@user)
   else
   	render 'new'
   end
   	#@user.save
   # redirect_to users_show(@user)
end

def destroy
	@user = User.find(params[:id])
	@user.destroy
	flash[:nontice] = " User was destroy successfully " 
	redirect_to users_path
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
end 

def update
 @user = User.find(params[:id])
   if @user.update(user_params)
   	   flash[:nontice] = "User was successfully"
       redirect_to user_path (@user)
   else
   	render 'new'
   end
end

	

 private
   def user_params
   	params.require(:user).permit(:username,:email,:address)
   end


end
