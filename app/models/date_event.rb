class DateEvent < ApplicationRecord
  belongs_to :event
  has_many :vote
end
