
class ScrapyConfig < ApplicationRecord
  serialize :approved_senders, Array
  serialize :approved_mail_subjects, Array
  validates_presence_of :client_id


  #validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  def approved_senders_as_string
    approved_senders.join ','
  end

  def approved_mail_subjects_as_string
    approved_mail_subjects.join ','
  end


end
