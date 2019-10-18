Rails.application.routes.draw do
  resources :places
  get 'user/profile'
  get 'user/pontos'
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
	devise_for :users
end
