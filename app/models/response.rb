class Response < ApplicationRecord
  belongs_to :responser, class_name: 'User'
  belongs_to :event
  belongs_to :receiver, class_name: 'User'
  belongs_to :invite
end
