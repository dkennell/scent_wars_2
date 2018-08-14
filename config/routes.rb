Rails.application.routes.draw do
  root 'dogs#create'

  resources :visits
  resources :hydrants
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
