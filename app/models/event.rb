class Event < ApplicationRecord

  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  has_many :invites, dependent: :destroy

  #need to be done
  has_many :user_events
  has_many :participants, through: :user_events, source: :user



  validates :title, presence: true
  validates :content, presence: true

end
