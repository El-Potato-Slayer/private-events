require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  context "Creates new event for test user" do
    it "sets event attributes" do
      user = User.create(name: "Test User", email: "test@test.com")
      event = Event.create(date: "2020-12-30 08:00", title: "Test Event", description: "Test", location: "Test", creator_id: user.id)
      attendance = EventAttendee.create(attendee_id: user.id, enrolled_event_id: event.id)
      expect(attendance.attendee.name).to eq("Test User")
      expect(attendance.attendee.email).to eq("test@test.com")
      expect(attendance.enrolled_event.title).to eq("Test Event")
      expect(attendance.enrolled_event.location).to eq("Test")
    end
    end
end
