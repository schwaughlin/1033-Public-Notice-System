class Subscription < ApplicationRecord
  audited
  belongs_to :equipment
  belongs_to :user
end
