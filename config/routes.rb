Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :pets
  get 'users/dashboard', to: "users#dashboard"
end
