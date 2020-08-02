Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :teams
      resources :athletes
      resources :injuries
      resources :stats
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      root "application#index"
      
    end
  end
end
