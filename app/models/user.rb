class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  WHITELISTED_DEPARTMENTS = %w(@greatfallsmt.net tcsheriff6@3rivers.net tcsheriff1@3rivers.net @sheriff.meagherco.org)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :subscriptions

  scope -> :law_enforcement, ->{ where(law_enforcement: true) }

end
