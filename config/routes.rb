Rails.application.routes.draw do
  resources :colors, only: [:index, :show]
  resources :playlists, except: [:delete]
  resources :tracks, only: [:show, :create]
end
