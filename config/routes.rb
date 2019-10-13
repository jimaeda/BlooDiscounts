Rails.application.routes.draw do
  get 'sessions/new'
  get 'user/profile'
  get 'user/pontos'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'quit'  => 'sessions#destroy'
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
	devise_for :users
end
