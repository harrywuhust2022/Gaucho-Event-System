class Invite < ApplicationRecord
  belongs_to :event
  belongs_to :host, class_name: 'User'
  belongs_to :guest, class_name: 'User'
end
