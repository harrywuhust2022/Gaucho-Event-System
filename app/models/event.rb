class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  has_many :user_events
  has_many :participants, through: :user_events, source: :user

  has_many :comments

  validates :title, presence: true
  validates :content, presence: true

end
