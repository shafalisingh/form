json.extract! attachment, :id, :attachment_type, :attachment_name, :priority, :scrapy_config_id, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
