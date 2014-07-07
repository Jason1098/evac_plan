Rails.application.routes.draw do
  resources :muster_locations

  resources :employees do
  	collection { post :import }
  end

  root :to => "visitors#index"
  devise_for :users
  resources :users
end
