Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'pets/index'
  get 'pets/show'
  get 'pets/new'
  get 'pets/create'
  root to: 'pages#home'
  resources :pets, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
