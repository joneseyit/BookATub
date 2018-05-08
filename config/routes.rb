Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :listings, only: [:index, :show, :destroy, :update]
      resources :users, only: [:index, :show, :destroy, :update]
      resources :reservations, only: [:index, :show, :destroy, :update]
    end
  end
end
