Carriermanager::Application.routes.draw do
  resources :carriers
  
  get "welcome/index"
  root "welcome#index"
 end
