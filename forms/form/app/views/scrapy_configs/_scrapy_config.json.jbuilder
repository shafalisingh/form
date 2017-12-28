json.extract! scrapy_config, :id, :client_id, :tgm_assigned_mailbox, :approved_senders, :approved_mail_subjects, :created_at, :updated_at
json.url scrapy_config_url(scrapy_config, format: :json)
