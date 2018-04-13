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
    User.create(user_params)
    redirect_to users_path
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
      params.require(:user).permit(:username, :fname, :password)
  send
end
