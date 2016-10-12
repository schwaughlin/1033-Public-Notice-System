class AddQuantityToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :quantity, :integer
  end
end
