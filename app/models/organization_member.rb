class OrganizationMember < ApplicationRecord
  belongs_to :username
  belongs_to :organization
end
