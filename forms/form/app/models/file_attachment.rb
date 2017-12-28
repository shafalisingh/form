class FileAttachment < ApplicationRecord
  belongs_to :scrapy_config
  validates_presence_of :type_of_attachment
end
