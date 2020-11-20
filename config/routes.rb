Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :pets, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create, :edit, :update]
  end
  resources :users, only: [:show, :edit, :update]
  resources :bookings, only: [:destroy]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
