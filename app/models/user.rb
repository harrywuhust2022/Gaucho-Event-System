class User < ApplicationRecord
  paginates_per 5
  has_many :created_events, class_name: 'Event', dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :sent_invites, class_name: 'Invite', foreign_key: 'host_id', dependent: :destroy
  has_many :received_invites, class_name: 'Invite', foreign_key: 'guest_id', dependent: :destroy
  has_many :sent_responses, class_name: 'Response', foreign_key: 'responser_id', dependent: :destroy
  has_many :received_responses, class_name: 'Response', foreign_key: 'receiver_id', dependent: :destroy


  has_many :user_events, dependent: :destroy
  has_many :participating_events, through: :user_events, source: :event

  has_secure_password

  # Validations
  validates :username, presence: true
  validates :email, presence: true

end
