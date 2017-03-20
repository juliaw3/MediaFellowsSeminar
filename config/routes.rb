Rails.application.routes.draw do
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
