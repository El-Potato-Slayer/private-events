class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendees, foreign_key: :enrolled_event_id
  has_many :attendees, through: :event_attendees

  scope :past_events, ->(today) { where("date < ?", today) if today.present? }
  scope :upcoming_events, ->(today) { where("date > ?", today) if today.present? }
  # validates :date, :title, :description, :location, presence: true
end
