class Attachment < ApplicationRecord
  belongs_to :scrapy_config,optional: true

end
