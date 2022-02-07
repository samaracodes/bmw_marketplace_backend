Rails.application.routes.draw do
  resources :parts_listings
  resources :car_listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/users', to: 'users#create'
  get '/users/:user_id', to: 'users#show'
  get '/users', to: 'users#index'

  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'



  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index]
      resources :listings, only: [:index, :create, :show]
      resources :categories, only: [:index]
    end
  end
end
