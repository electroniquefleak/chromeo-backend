Rails.application.routes.draw do
  resources :playlists
  resources :tracks
  resources :users
  resources :sessions, only: [:create]
end
