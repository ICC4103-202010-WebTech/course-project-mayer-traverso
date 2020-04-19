class Message < ApplicationRecord
  belongs_to :user
  has_one :message_recipient
end
