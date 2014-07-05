Rails.application.routes.draw do
  resources :muster_locations

  resources :employees

  root :to => "visitors#index"
  devise_for :users
  resources :users
end
