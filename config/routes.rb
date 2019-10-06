Rails.application.routes.draw do
  resources :banks
	root to: 'pages#home'
	devise_for :users
end
