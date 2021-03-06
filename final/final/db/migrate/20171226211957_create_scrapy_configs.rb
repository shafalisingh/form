class CreateScrapyConfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :scrapy_configs do |t|
      t.integer :client_id
      t.string :tgm_assigned_mailbox
      t.text :approved_senders,Array: true
      t.text :approved_mail_subjects,Array: true

      t.timestamps
    end
  end
end
