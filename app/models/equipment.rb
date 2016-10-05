class Equipment < ApplicationRecord
  has_many :subscriptions

  def require_public_notice?
    if date_acquired
      (date_acquired.try(:to_date) > "Sat, 04 Apr 2015".to_date && department != 'DOJ/DEA BILLINGS') ? true : false
    else
      false
    end
  end
end
