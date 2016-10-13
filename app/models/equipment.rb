class Equipment < ApplicationRecord

  validates :name, presence: true
  validates :quantity, presence: true
  validates_date :date_requested #, timeliness: { on_or_after: lambda { Date.today - 14 }, type: :date }, :message => "requires public notice within 14 days of request"

  has_many :subscriptions
  has_many :notes
  accepts_nested_attributes_for :notes

  def require_public_notice?
    if date_acquired
      (date_acquired.try(:to_date) > "Sat, 04 Apr 2015".to_date && department != 'DOJ/DEA BILLINGS') ? true : false
    elsif date_requested
      (date_requested.try(:to_date) > "Sat, 04 Apr 2015".to_date && department != 'DOJ/DEA BILLINGS') ? true : false
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
