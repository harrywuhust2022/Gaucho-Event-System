class User < ApplicationRecord
    has_secure_password

    # user -> events.
    has_many :events, dependent: :destroy

    validates :email, presence: true, uniqueness: true
end
