Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # cuando se haga una peticion de tipo GET a /products se va a responder con el controlador products con el metodo index
  get '/users',to: 'users#index'
  get'/users/:id', to: 'users#show', as: :user
end
