Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :users
      resources :admins
      resources :farmers
      resources :consumers
      resources :donations
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

end
