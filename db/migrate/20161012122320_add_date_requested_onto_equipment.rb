class AddDateRequestedOntoEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :date_requested, :string
  end
end
