class User < ApplicationRecord

  validates_presence_of :username
  validates :password, confirmation: { message: 'Passwords did not match' }

  after_save :send_email

  def send_email
    Sendgrid.send(email)
  end

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
