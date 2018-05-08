Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :listings, only: [:index] #for now
      resources :users, only: [:index]
      resources :reservations, only: [:index]
    end
  end
end
