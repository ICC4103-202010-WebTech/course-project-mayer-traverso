class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :date_event
end
