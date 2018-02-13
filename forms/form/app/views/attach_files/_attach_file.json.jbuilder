json.extract! attach_file, :id, :attachment_type, :attachment_name, :priority, :maps_to, :scrapy_config_id, :created_at, :updated_at
json.url attach_file_url(attach_file, format: :json)
