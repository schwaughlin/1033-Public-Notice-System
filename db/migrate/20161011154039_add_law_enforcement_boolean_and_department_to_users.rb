class AddLawEnforcementBooleanAndDepartmentToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :law_enforcement, :boolean
    add_column :users, :department, :string
  end
end
