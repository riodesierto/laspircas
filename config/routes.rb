Rails.application.routes.draw do

  root to: 'visitors#index'

	
	resources :visitors
	resources :residents
	resources :tags
	resources :plates

  devise_for :users
  resources :users
end
