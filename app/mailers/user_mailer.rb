class UserMailer < ApplicationMailer


  def welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Montana's 1033 Equipment Logger Project")
  end

  def notification_email(user, equipment)
    @user = user
    @equipment = equipment
    mail(:to => user.email, :subject => "There have been new changes and reports on Montana's 1033 Equipment Logger!")
  end
end
