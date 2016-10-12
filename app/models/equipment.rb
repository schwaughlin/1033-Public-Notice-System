class Equipment < ApplicationRecord
  has_many :subscriptions

  def require_public_notice?
    if date_acquired
      (date_acquired.try(:to_date) > "Sat, 04 Apr 2015".to_date && department != 'DOJ/DEA BILLINGS') ? true : false
    else
      false
    end
  end

  def self.made_by_valid_users
    made_by_no_users + made_by_valid_law_enforcement
  end

  def self.made_by_no_users
    where("creator_id IS NULL")
  end

  def self.made_by_valid_law_enforcement
    where(creator_id: User.where("approved = ?", true).pluck(:id))
  end
end
