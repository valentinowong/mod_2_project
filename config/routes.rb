Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :games, only: [:index, :show, :new, :create]
  resources :game_rooms, only: [:index, :show, :new, :create]
end
