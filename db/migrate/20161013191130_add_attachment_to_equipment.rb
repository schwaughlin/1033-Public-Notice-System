class AddAttachmentToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :attachment, :string
  end
end
