class User < ApplicationRecord
  def full_name
    fname + " " + username
  end
  #@user.fullname

  private

  def reversed_name
    username + " " + fname
  end
  # @user.reversed_name -->

end
