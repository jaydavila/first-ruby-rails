class SessionsController < ApplicationController
  def new

  end

  def create
   puts '************'
   puts params.inspect
   puts '*************'
   redirect_to login_path
  end

  def destroy

  end
end
