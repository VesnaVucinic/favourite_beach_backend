Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :api do
    namespace :v1 do
      resources :beaches, only: [:index, :create, :show, :update]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :countries, only: [:index]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'auth#profile'
    end
  end



end

