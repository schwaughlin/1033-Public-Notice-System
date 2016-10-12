class AddColumnsToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :user_id, :integer
    add_column :notes, :text, :string
    add_column :notes, :equipment_id, :integer
  end
end
