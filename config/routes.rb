Rails.application.routes.draw do
  resources :ducks
  resources :students


  # get '/ducks', to 'ducks#index', as: 'ducks'
  # get '/ducks/new', to: 'ducks#new', as: 'new_duck'
  # get '/ducks/:id', to: 'ducks#show', as: 'duck'
  # get '/ducks/:id/edit', to: 'ducks#edit', as: 'edit_duck'

  # post '/ducks', to: 'ducks#create'
  # patch '/ducks/:id', to: 'ducks#update'
  # delete '/ducks/:id', to: 'ducks#destroy'
end
