class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :flyer
  has_many_attached :images
  has_many :user_guests, dependent: :destroy
  has_many :event_images,  dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :date_events, dependent: :destroy
  has_many :organization_events
  has_many :users, through: :user_guests
  has_many :votes, through: :date_events, dependent: :destroy
  accepts_nested_attributes_for :date_events
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :user_guests

  after_create :addToGuest

  def addToGuest
    a = UserGuest.create(user: self.user, event: self)
    a.save
  end
end
