class DateEvent < ApplicationRecord
  belongs_to :event
  belongs_to :vote
end
