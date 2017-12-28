class CreateScrapyConfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :scrapy_configs do |t|
      t.integer :client_id
      t.string :tgm_assigned_mailbox
      t.text :approved_senders, array: true
      t.text :approved_mail_subjects, array: true
      t.string :type_of_attachment

      t.timestamps
    end
  end
end
