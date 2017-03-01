Rails.application.routes.draw do
  resources :internships
  get 'home/index'
  get 'schedule/about'
  get 'internships/index'

  root 'home#index'

  get '/redirect', to: 'schedule#redirect', as: 'redirect'
  get '/callback', to: 'schedule#about', as: 'callback'
  get '/calendars', to: 'schedule#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'schedule#events', as: 'events', calendar_id: /[^\/]+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
