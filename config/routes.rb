Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :listings
=======
  namespace :api do
    namespace :v1 do
      resources :listings, only: [:index, :show, :destroy, :update]
      resources :users, only: [:index, :show, :destroy, :update]
      resources :reservations, only: [:index, :show, :destroy, :update]
>>>>>>> 3d55ef2beb4fdf95cb3d47a2d18da3f52bd9d269
    end
  end
end
