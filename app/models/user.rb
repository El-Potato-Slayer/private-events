class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :events
  has_many :attendees
end
