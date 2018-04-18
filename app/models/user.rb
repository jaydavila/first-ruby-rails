class User < ApplicationRecord

  validates_presence_of :username
  validates :password, confirmation: { message: 'Passwords did not match' }

  scope :created_since_yesterday, -> {
     where('created_at between ? and ?', Time.now-1.day, Time.now)
   }

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
