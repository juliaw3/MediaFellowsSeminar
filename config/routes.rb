Rails.application.routes.draw do
  resources :internships
  get 'home/index'
  get 'schedule/about'
  get 'internships/index'

  root 'home#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
