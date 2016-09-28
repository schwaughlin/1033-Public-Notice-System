class SubscriptionsController < ApplicationController
  def new
    if whitelisted_params[:user_id].blank?
      flash[:alert] = "You need to have an account to subscribe to notifications!"
      redirect_to new_user_registration_path
    elsif Subscription.create(user_id: whitelisted_params[:user_id], equipment_id: whitelisted_params[:equipment_id])
      flash[:notice] = "Congratulations! You have now subscribed to #{Equipment.find(whitelisted_params[:equipment_id]).try(:name)}!"
      redirect_to root_path
    else
      flash[:alert] = "There was an error when trying to subscribe to #{Equipment.find(whitelisted_params[:equipment_id]).try(:name)}, please try again later."
      redirect_to root_path
    end
  end

  def show
    binding.pry
  end

  def destroy
    binding.pry
  end

  private

  def whitelisted_params
    params.permit(:equipment_id, :user_id)
  end
end
