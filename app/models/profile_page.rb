class ProfilePage < ApplicationRecord
  belongs_to :user
  has_one_attached :flyer
  has_many :profile_images
end
