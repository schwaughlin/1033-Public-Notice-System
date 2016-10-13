class EquipmentController < ApplicationController


  def create
    @equipment = Equipment.new permitted_params
    @equipment.records_shown = true
    if @equipment.save
      flash[:notice] = "New public notice for #{@equipment.name} successfully posted!"
      @equipment = nil
      redirect_to leos_path
    else
      flash[:alert] = "This public notice failed the following validations: #{@equipment.errors.full_messages.join(", ")}"
      redirect_to leos_path
    end
  end

  def mark_received
    respond_to do |format|

      format.js {
        if params["name"]
          marked_equipment = Equipment.find(params["name"].to_i)
          marked_equipment.date_acquired = Date.today
          marked_equipment.records_shown = true
          marked_equipment.save
        end
      }

    end
  end

  private

  def permitted_params
    params.fetch(:equipment, {}).permit(:name, :cost, :value, :quantity, :code, :date_requested, :department, :creator_id,
                                        notes_attributes: [:id, :user_id, :equipment_id, :text])
  end
end
