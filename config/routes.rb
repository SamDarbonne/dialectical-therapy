Rails.application.routes.draw do

  root to: 'welcome#home'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:user_name', to: 'users#show', as: 'user'
  get '/users/:user_name/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/users/:user_id/events/new', to: 'events#new', as: 'new_event'
  get '/users/:user_id/events/:id', to: 'events#show', as: 'event'
  post '/users/:user_id/events', to: 'events#create'
  get '/users/:user_id/events/:id/edit', to: 'events#edit', as: 'edit_event'
  patch '/users/:user_id/events/:id', to: 'events#update'
  delete '/users/:user_id/events/:id', to: 'events#destroy'

end
