class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees
  has_many :users, through: :attendees
  validates :date, :title, :description, :location, presence: true
end
