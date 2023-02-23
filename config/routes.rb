Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'movies#index'
  get 'movies', to: 'movies#index'
  get 'movies/new', to: 'movies#new'
  post 'movies', to: 'movies#create'
  get 'movies/:id', to: 'movies#show', as: :movie
  get 'movies/:id/edit', to: 'movies#edit', as: :edit_movie
  patch 'movies/:id', to: 'movies#update'
  delete 'movies/:id', to: 'movies#destroy'

  get 'movies/:id/list', to: 'lists#new', as: :new_list

  post 'list', to: 'lists#create', as: :create_list
  get 'list/:id', to: 'lists#show', as: :list
  delete 'list/:id', to: 'lists#destroy', as: :delete_list
  get 'list/:id/edit', to: 'lists#edit', as: :edit_list
  patch 'list/:id', to: 'lists#update', as: :update_list



end
