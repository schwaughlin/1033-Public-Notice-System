class AddValueToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :value, :string
  end
end
