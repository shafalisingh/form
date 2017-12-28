json.extract! file_attachment, :id, :type_of_attachment, :scrapy_config_id, :created_at, :updated_at
json.url file_attachment_url(file_attachment, format: :json)
