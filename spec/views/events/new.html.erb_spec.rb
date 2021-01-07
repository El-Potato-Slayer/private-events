require 'rails_helper'

RSpec.describe 'events/new', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name: 'Test User', email: 'test@test.com'))
    @event = assign(:event,
                    Event.new(date: '2020-12-30 08:00', title: 'Test Event', description: 'Test', location: 'Test',
                              creator_id: @user.id))
  end

  it 'renders new event form' do
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
    end
  end
end
