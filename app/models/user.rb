class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :event_attendees, foreign_key: :attendee_id
  has_many :enrolled_events, through: :event_attendees
end
