Rails.application.routes.draw do
  root "photos#index"

  devise_for :users
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos   
  #resources :users, only: :show
  get ":username/feed" => "users#feed", as: :feed
  get ":username/followers" => "users#followers", as: :followers
  get ":username/following" => "users#following", as: :following
  get ":username/liked" => "users#liked", as: :liked
  get "/:username" => "users#show", as: :user

  # { :except => [:delete]}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
