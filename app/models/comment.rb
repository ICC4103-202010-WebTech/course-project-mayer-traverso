class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :comment_of_comments, dependent: :destroy
end
