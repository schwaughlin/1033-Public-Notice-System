class StaticPagesController < ApplicationController

  def index
    @equipment = Equipment.made_by_valid_users
    @equipment_notice = Equipment.where("date_acquired IS NULL").made_by_valid_users#.where("date_acquired IS NULL")
  end

  def law_enforcement_index
    if current_user.blank?
      flash[:alert] = "Please sign in before you continue to this page."
      redirect_to new_user_session_path
    elsif current_user.law_enforcement != true
      flash[:alert] = "You are not a law enforcement user and therefore not allowed to access this page."
      redirect_to root_path
    end
    @equipment = Equipment.where("department = ?", current_user.department).where("date_acquired IS NOT NULL")
    @equipment_notice = Equipment.where("department = ?", current_user.department).where("date_acquired IS NULL")
  end

end
