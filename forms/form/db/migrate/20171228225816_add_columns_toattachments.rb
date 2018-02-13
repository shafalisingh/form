class AddColumnsToattachments < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :attachment_name, :string
  end
end
