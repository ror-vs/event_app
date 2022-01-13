Rails.application.routes.draw do
  resources :events
  resources :speakers
  get 'home/index'
  root 'events#index'
  devise_for :users
  # get 'user' => 'events#index', :as => 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
