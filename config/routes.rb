Rails.application.routes.draw do
  resources :admins
  resources :hospitals
  resources :donations
	root to: 'pages#home'
	devise_for :users
end
