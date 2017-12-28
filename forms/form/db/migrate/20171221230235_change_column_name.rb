class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :attachments, :type, :type_of_attachment
  end
end
