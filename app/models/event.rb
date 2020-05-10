class Event < ApplicationRecord
  belongs_to :user
  has_many :user_guests, dependent: :destroy
  has_many :comments
  has_many :date_events, dependent: :destroy
  has_many :organization_events
  has_many :users, through: :user_guests
  has_many :votes, through: :date_events, dependent: :destroy

  after_create :addToGuest

  def addToGuest
    a = UserGuest.create(user: self.user, event: self)
    a.save
  end
end
