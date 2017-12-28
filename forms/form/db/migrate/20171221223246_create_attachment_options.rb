class CreateAttachmentOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :attachment_options do |t|
      t.integer :attachment_id
      t.string :name
      t.integer :priority

      t.timestamps
    end
  end
end
