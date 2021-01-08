require 'rails_helper'

RSpec.describe 'Sessions', type: :feature do
  context 'with valid login' do
    it 'create a new session' do
      User.create!(name: 'Test User', email: 'test@test.com')
      visit '/login'
      fill_in 'name', with: 'Test User'
      click_button 'commit'
      expect(current_path).to eq(events_path)
    end
  end
  context 'w' do
    it 'create a new session' do
      User.create!(name: 'Test User', email: 'test@test.com')
      visit '/login'
      fill_in 'name', with: 'Test User'
      click_button 'commit'
      expect(current_path).to eq(events_path)
    end
  end
  describe 'DELETE /destroy' do
    it 'destroys the current sessoion' do
      visit '/logout'
      expect(current_path).to eq(events_path)
    end
  end
end
