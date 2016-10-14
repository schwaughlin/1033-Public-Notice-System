class User < ApplicationRecord

  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  WHITELISTED_DEPARTMENTS = %w(@greatfallsmt.net tcsheriff6@3rivers.net tcsheriff1@3rivers.net @sheriff.meagherco.org)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable
  has_many :subscriptions
  has_many :notes
  validates_presence_of :department, :if => lambda {|u| law_enforcement == true}

  def self.law_enforcement
    where(law_enforcement: true)
  end

  def law_enforcement_must_have_department
    if law_enforcement == true && department.blank?
      return false
    else
      return true
    end
  end

  def send_welcome_email
    UserMailer.welcome_email(self).deliver
  end
end
