Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
<<<<<<< Updated upstream
  resources :rooms, only: [:new, :create]
=======
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end

>>>>>>> Stashed changes
end 
