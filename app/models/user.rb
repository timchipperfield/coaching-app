class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, uniqueness: true
  validates :username, uniqueness: true

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end

  # TODO Note that if you aren’t using e-mail as your authentication key,
  # then it may be the case that users can have multiple accounts with the same e-mail address.
  # This will cause the “recoverable” module not to work well,
  # as it will only include a link in the password reset e-mail to the first account
  # for which it finds a matching e-mail. Here is a thread on the Google Group
  # about how to implement adding all the accounts information into the password reset email.
  # https://groups.google.com/forum/?fromgroups#!topic/plataformatec-devise/Fr2TgDQcYmA
end
