Rails.application.routes.draw do
  get 'contact/new'

  get 'contact/create'

  resources :internships
  get 'home/index'
  get 'schedule/about'
  get 'internships/index'
  get 'requirements/index'

  root 'home#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
