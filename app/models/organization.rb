class Organization < ApplicationRecord
  has_many :organization_members
  has_many :organization_events
end
