FactoryGirl.define do
  factory :user, class: User do
    email { Faker::Internet.email }
    password { Faker::Internet.password(18, 30)}
    after(:build) { |user| user.confirm }
  end
end
