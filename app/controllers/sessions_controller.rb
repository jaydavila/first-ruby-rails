class SessionsController < ApplicationController
  def new

  end

  def create
   puts '************'
   puts params.inspect
   puts '*************'
   # fid a user i the database that matches the username in the form
   @user = User.find_by(username: params[:session][:username])
   # check if there is a user with that username, and check if the password is that user's password
    # if @user && @user.password == params(params[:session][:password])
    if @user && @user.authenticate(params[:session][:password])
      puts ' LOGIN SUCCESSFUL'
      log_in(@user)
   redirect_to user_path @user
   redirect '/user/#{@user.id}'
 else
   puts "LOGIN FAIlED ..... DUN DUN"
   redirect_to login_path
  end
end
  def destroy
      log_out
      redirect_to root_path
  end
end
