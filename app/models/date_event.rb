class DateEvent < ApplicationRecord
  belongs_to :event
  has_many :votes, dependent: :destroy

  #validates :date, not_in_past: true
end
