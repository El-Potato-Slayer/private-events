require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/events', type: :request do
  # Event. As you add validations to Event, be sure to
  # adjust the attributes here as well.
  let(:user) do
    User.create!(name: 'Test User', email: 'test@test.com')
  end
  let(:valid_attributes) do
    { date: '2020-12-30 08:00', title: 'Test Event', description: 'Test', location: 'Test', creator_id: user.id }
  end

  let(:invalid_attributes) do
    { test: 'invalid' }
  end

  describe 'GET /s' do
    it 'renders a successful response' do
      Event.create! valid_attributes
      get events_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      event = Event.create! valid_attributes
      get event_url(event)
      expect(response).to be_successful
    end
  end
end
