Carriermanager::Application.routes.draw do
  resources :carriers
  resources :origins
  resources :destinations
  resources :origin_destination_pairs
  resources :rates
  
  get "welcome/index"
  root "welcome#index"
 end
