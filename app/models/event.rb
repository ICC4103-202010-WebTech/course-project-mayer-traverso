class Event < ApplicationRecord
  belongs_to :user
  has_many :user_guests
  has_many :comments
  has_many :date_events
  has_many :organization_events
  has_many :users, through: :user_guests
end
