require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Creates new event for test user' do
    it 'sets event attributes' do
      user = User.create(name: 'Test User', email: 'test@test.com')
      event = Event.create(date: '2020-12-30 08:00', title: 'Test Event', description: 'Test', location: 'Test',
                           creator_id: user.id)
      expect(event.creator_id).to eq(user.id)
      expect(event.title).to eq('Test Event')
      expect(event.date).to eq('2020-12-30 08:00')
      expect(event.description).to eq('Test')
      expect(event.location).to eq('Test')
      expect(event.creator.name).to eq('Test User')
    end
  end
end
