class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|

      t.string :type_of_attachment
      t.references :scrapy_config, foreign_key: true

      t.timestamps
    end
  end
end
