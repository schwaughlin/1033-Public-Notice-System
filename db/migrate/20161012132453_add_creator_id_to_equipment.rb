class AddCreatorIdToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :creator_id, :integer
  end
end
