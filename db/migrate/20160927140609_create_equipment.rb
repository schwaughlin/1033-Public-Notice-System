class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :department
      t.string :code
      t.string :name
      t.string :cost
      t.string :date_acquired
      t.boolean :records_shown

      t.timestamps
    end
  end
end
