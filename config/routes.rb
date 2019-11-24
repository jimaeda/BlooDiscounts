Rails.application.routes.draw do
  root to: 'pages#home'
  get 'sessions/new'
  get 'admins/profile'
  get 'register_donation' => 'admins#register_donation'
  post 'register_donation' => 'admins#register_donation'
  get 'user/profile'
  get 'user/points'
  get 'user/show'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'quit'  => 'sessions#destroy'
  get 'hospitals/info' => 'hospitals#info'
  resources :admins
  resources :donations
  resources :hospitals
  resources :stores
  resources :rewards do
    member do
      patch :retrieve
      put :retrieve
    end
  end
  devise_for :users
  as :user do
    get 'user/profile', :to => 'devise/registrations#edit', :as => :user_root
  end
end
