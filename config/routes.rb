Rails.application.routes.draw do
  root 'dogs#create'

  resources :visits
  resources :hydrants
  resources :dogs, only: %i(create index show update destroy)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
