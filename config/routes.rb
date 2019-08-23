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
  resources :comments, only: [:create, :update]

  post '/game_rooms/:id/activate' => 'game_rooms#activate', as: 'activate_game_room'
  post '/game_rooms/:id/deactivate' => 'game_rooms#deactivate', as: 'deactivate_game_room'

  post '/game_rooms/:id/complete' => 'game_rooms#complete', as: 'complete_game_room'
  post '/game_rooms/:id/uncomplete' => 'game_rooms#uncomplete', as: 'uncomplete_game_room'

  get '/game_rooms/:id/admin' => 'game_rooms#admin', as: 'game_room_admin'

  get '/users/:id' => 'users#show', as: 'user'
  
end
