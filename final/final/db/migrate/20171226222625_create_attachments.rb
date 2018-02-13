class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string :attachment_type
      t.string :attachment_name
      t.integer :priority
      t.references :scrapy_config, foreign_key: true

      t.timestamps
    end
  end
end
