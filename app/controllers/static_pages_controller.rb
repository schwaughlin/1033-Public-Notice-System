class StaticPagesController < ApplicationController

  def index
    @equipment = Equipment.made_by_valid_users
    @equipment_notice = Equipment.where("date_acquired IS NULL").made_by_valid_users#.where("date_acquired IS NULL")
    if current_user
      @equipment_subscriptions = Equipment.find(Subscription.where("user_id = ?", current_user.id).pluck(:equipment_id))
    end
  end

  def subscribe_public_notices
    @user = current_user
    @user.subscribed = true
    @user.save
    flash[:notice] = "Congratulations! You have subscribed to receive email notifications on new public notices."
    redirect_to root_path
  end

  def unsubscribe_public_notices
    @user = current_user
    @user.subscribed = false
    @user.save
    flash[:notice] = "You have successfully unsubscribed from public notices."
    redirect_to root_path
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
