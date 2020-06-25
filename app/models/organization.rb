class Organization < ApplicationRecord
  has_one_attached :flyer
  has_many :organization_members
  has_many :organization_events, dependent: :destroy
  has_many :users, through: :organization_members
  has_many :events, through: :organization_events, dependent: :destroy
end


