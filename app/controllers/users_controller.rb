class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # puts '*********'
    # puts params.inspect
    # puts '*********'
    @user = User.new(user_params)
    if @user.save
    redirect_to users_path
  else
     render 'new'
  end
end

  def show
     @user = User.find(params[:id])
  end

  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end
end

private

def user_params
      params.require(:user).permit(:username, :fname, :password, :password_confirmation)
  end
