class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :password, :presence => true,
            :confirmation => true,
            :length => {:within => 8..40},
            :on => :create
  validates :password, :confirmation => true,
            :length => {:within => 8..40},
            :on => :update
  has_one :profile_page
  has_many :messages
  has_many :message_recipients
  has_many :votes
  has_many :comments, dependent: :destroy
  has_many :comment_of_comments, dependent: :destroy
  has_many :user_guests
  has_many :organization_members, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :organizations, through: :organization_members

  after_create :profile

  def profile
    pro = ProfilePage.create(user: self)
    pro.save
  end
end