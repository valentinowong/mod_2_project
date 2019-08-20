Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

  root 'application#welcome'  

  resources :games, only: [:index, :show, :new, :create]
  resources :game_rooms, only: [:index, :show, :create, :destroy]
  resources :game_players, only: [:create, :destroy]
end
