class Organization < ApplicationRecord
  has_many :organization_members
  has_many :organization_events
  has_many :users, through: :organization_members
  has_many :events, through: :organization_events
end
