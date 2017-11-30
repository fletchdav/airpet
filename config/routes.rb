Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :pets do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:destroy]

  get 'users/dashboard', to: "users#dashboard"
  patch 'bookings/:id/accept', to: "bookings#accept", as: :accept
end
