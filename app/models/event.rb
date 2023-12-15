class Event < ApplicationRecord
  paginates_per 10

  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  has_many :invites, dependent: :destroy


  has_many :user_events, dependent: :destroy
  has_many :participants, through: :user_events, source: :user



  validates :title, presence: true
  validates :content, presence: true

end
