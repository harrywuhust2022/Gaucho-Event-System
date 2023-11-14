class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', dependent: :destroy

  has_many :user_events
  has_many :participating_events, through: :user_events, source: :event

  has_many :comments
  has_many :invites
  has_many :rsvps

  # Validations
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
