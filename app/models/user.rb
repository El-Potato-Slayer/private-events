class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :attendees
  has_many :events
end
