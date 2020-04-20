class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, email: true
  validates :username, uniqueness: true
  has_one :profile_page
  has_many :messages
  has_many :message_recipients
  has_many :votes
  has_many :comments, dependent: :destroy
  has_many :comment_of_comments, dependent: :destroy
  has_many :user_guests
  has_many :organization_members
  has_many :events, through: :user_guests
  has_many :organizations, through: :organization_members
end