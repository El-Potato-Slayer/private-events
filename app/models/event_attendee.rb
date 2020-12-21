class EventAttendee < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :enrolled_event, class_name: "Event"
end
