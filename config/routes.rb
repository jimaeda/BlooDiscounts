Rails.application.routes.draw do
  resources :donations
  resources :hospitals
  resources :admins
	root to: 'pages#home'
	devise_for :users
end
