class Invite < ApplicationRecord
  belongs_to :event
  belongs_to :host, class_name: 'User'
  belongs_to :guest, class_name: 'User'
  has_one :response, dependent: :destroy
  def self.pending_invites_for_host(user)
    where(host: user, status: 0).count
  end
  def self.pending_invites_for_guest(user)
    where(guest: user, status: 0).count
  end
end
