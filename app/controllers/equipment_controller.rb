class EquipmentController < ApplicationController

  def create
    @equipment = Equipment.new permitted_params
    if @equipment.save
      flash[:notice] = "New public notice for #{@equipment.name} successfully posted!"
      @equipment = nil
      redirect_to leos_path
    else
      flash[:alert] = "There was a problem saving this equipment. Please try again later."
      redirect_to leos_path
    end
  end

  private

  def permitted_params
    params.fetch(:equipment, {}).permit(:name, :cost, :value, :quantity, :code, :date_requested, :department, :creator_id)
  end
end
