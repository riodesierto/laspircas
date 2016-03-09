Rails.application.routes.draw do

  root to: 'visitors#index'

	match 'busqueda', to: 'visitors#busqueda', via: :all
	match 'results', to: 'visitors#results', via: :all

	resources :visitors, :residents, :tags, :plates

  devise_for :users
  resources :users
end
