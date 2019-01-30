class UsersController < ApplicationController

def new
   @user = User.new
end

def create
   # render plain: params[:user].inspect
   @user = User.new(user_params)
   @user.save
   redirect_to users_show(@user)
end

 private
   def user_params
   	params.require(:user).permit(:username,:email,:address)
   end


end
