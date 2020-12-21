Rails.application.routes.draw do
  get 'event_attendee/new'
  get 'event_attendee/create'
  get 'event_attendee/destroy'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'enroll', to: "events#enroll", as: 'enroll'
  
  resources :users
  resources :sessions
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
