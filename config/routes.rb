Rails.application.routes.draw do
  root to: 'pages#home'
  get 'sessions/new'
  get 'admins/profile'
  get 'register_donation' => 'admins#register_donation'
  post 'register_donation' => 'admins#register_donation'
  get 'show_blood_table' => 'admins#show_blood_table'
  post 'show_blood_table' => 'admins#show_blood_table'
  get 'user/profile'
  get 'user/points'
  get 'user/show'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'quit'  => 'sessions#destroy'
  resources :admins
  resources :donations
  resources :hospitals
  resources :stores
  resources :rewards
  devise_for :users
  as :user do
    get 'user/profile', :to => 'devise/registrations#edit', :as => :user_root
  end
end
