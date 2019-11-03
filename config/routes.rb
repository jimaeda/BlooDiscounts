Rails.application.routes.draw do
  get 'sessions/new'
  get 'admins/profile'
  get 'user/profile'
  get 'user/points'
  get 'user/show'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'quit'  => 'sessions#destroy'
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
  devise_for :users
  as :user do
    get 'user/profile', :to => 'devise/registrations#edit', :as => :user_root
  end
end
