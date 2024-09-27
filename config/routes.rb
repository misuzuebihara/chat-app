Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    member do
      get 'end_chat'
    end
    resources :messages, only: [:index, :create]
  end
end
