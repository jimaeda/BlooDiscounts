Rails.application.routes.draw do
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
	devise_for :users
end
