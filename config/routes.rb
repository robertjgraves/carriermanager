Carriermanager::Application.routes.draw do
  resources :carriers
  resources :origins
  resources :destinations
  resources :courses
  resources :rates
  
  get "welcome/index"
  root "welcome#index"
 end
