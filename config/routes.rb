Rails.application.routes.draw do
  root to: "welcome#index"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy"


  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/create'

  get 'users/destroy'

  get 'users/index'

  get 'users/:user_id/events', to: "events#index", as: "events"
  get 'users/:user_id/events/:id', to: "events#show", as: "event"
  get 'users/:user_id/events/new', to: "events#new", as: "events_new"
  post "users/:user_id/events", to: "events#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
