Rails.application.routes.draw do
  
  root to: "welcome#index"

  get '/login', to: 'sessions#new'
  post '/signup', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


  get 'users/new', to: 'users#new', as: 'new_user'

  get 'users/:user_id', to: 'users#show', as: 'user'

  get 'users/edit', to: 'users#edit', as: 'edit_user'

  get 'users/update', to: 'users#update'

  get 'users/create', to: 'users#create'

  get 'users/destroy', to: 'users#destroy'

  get 'users/index', to: 'users#index'

  get 'users/:user_id/events', to: 'events#index', as: 'events'
  get 'users/:user_id/events/:id', to: 'events#show', as: 'event'
  get 'users/:user_id/events/new', to: 'events#new', as: 'events_new'
  post 'users/:user_id/events', to: 'events#create'

end
