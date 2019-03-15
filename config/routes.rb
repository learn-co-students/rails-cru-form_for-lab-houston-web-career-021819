Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:create, :update, :show, :index, :new, :edit]
  resources :artists, only: [:create, :update, :show, :index, :new, :edit]
  resources :genres, only: [:create, :update, :show, :index, :new, :edit]
end
