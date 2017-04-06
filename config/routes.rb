Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :schedules
  get 'contact/new'

  get 'contact/create'

  resources :internships
  get 'home/index'
  get 'schedules/index'
  get 'internships/index'
  get 'requirements/index'

  root 'home#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
