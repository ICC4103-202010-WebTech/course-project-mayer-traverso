class UserGuest < ApplicationRecord
  belongs_to :username
  belongs_to :event
end
