Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/login', to: 'sessions#new'
  post '/signup', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/users', to: 'users#index', as: 'users'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  delete '/users/:id', to: 'users#destroy'

  get '/events/:id', to: 'events#show', as: 'event'
  get '/users/:user_id/events/new', to: 'events#new', as: 'new_event'
  post '/users/:user_id/events', to: 'events#create'

end
