Rails.application.routes.draw do
  get 'sessions/new'
  get 'admins/profile'
  get 'user/profile'
  get 'user/pontos'
  get 'user/edit'
  post 'user/salva_edit'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'quit'  => 'sessions#destroy'
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
	devise_for :users
end
