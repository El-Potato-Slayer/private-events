class Event < ApplicationRecord
  validates :date, presence: true
  validates :title, presence: true, uniqueness: true
  validates :location, presence: true
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees, foreign_key: :enrolled_event_id
  has_many :attendees, through: :event_attendees

  scope :past_events, ->(today) { where('date < ?', today) if today.present? }
  scope :upcoming_events, ->(today) { where('date > ?', today) if today.present? }
end
