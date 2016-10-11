class StaticPagesController < ApplicationController

  def index
    @equipment = Equipment.all
  end

  def law_enforcement_index
    if current_user.blank?
      flash[:alert] = "Please sign in before you continue to this page."
      redirect_to new_user_session_path
    elsif current_user.law_enforcement != true
      flash[:alert] = "You are not a law enforcement user and therefore not allowed to access this page."
      redirect_to root_path
    end
  end

end
