class AddAttachmentToNote < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :attachment, :string
  end
end
