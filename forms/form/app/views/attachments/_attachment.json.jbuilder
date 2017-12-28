json.extract! attachment, :id, :scrapy_config_id, :type, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
