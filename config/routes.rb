Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # cuando se haga una peticion de tipo GET a /products se va a responder con el controlador products con el metodo index
  patch '/users/:id', to: 'users#update'
  post '/users',to: 'users#create'
  get '/users/new',to: 'users#new', as: :new_user
  get '/users',to: 'users#index'
  get'/users/:id', to: 'users#show', as: :user
  get'/users/:id/edit', to: 'users#edit', as: :edit_user

  
end
