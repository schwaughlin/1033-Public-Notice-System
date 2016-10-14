namespace :user_emails do
  desc 'Imports equipment data'
  task general_subscription: :environment do
    if Equipment.maximum(:updated_at).to_date == Date.today
      @equipment = []
      Equipment.all.map{|x| x.updated_at.to_date == Date.today ? @equipment << x : nil}
    end
    @users = User.where(subscribed: true)
    @users.each do |user|
      user.notification_email(user, @equipment).deliver!
    end
  end
end
