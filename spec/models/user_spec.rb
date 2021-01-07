require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Register new user' do
    it 'sets username and email' do
      user = User.create(name: 'Test User', email: 'test@test.com')
      expect(user.name).to eq('Test User')
      expect(user.email).to eq('test@test.com')
    end
  end
end
