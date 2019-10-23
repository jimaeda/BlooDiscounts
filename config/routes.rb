Rails.application.routes.draw do
  get 'user/profile'
  get 'user/pontos'
  get 'user/edit'
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
	devise_for :users
end
