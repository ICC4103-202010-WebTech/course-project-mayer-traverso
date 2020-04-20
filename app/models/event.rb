class Event < ApplicationRecord
  belongs_to :user
  has_many :user_guests, dependent: :destroy
  has_many :comments
  has_many :date_events, dependent: :destroy
  has_many :organization_events
  has_many :users, through: :user_guests
  has_many :votes, through: :date_events, dependent: :destroy
end
