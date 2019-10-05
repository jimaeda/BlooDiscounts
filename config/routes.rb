Rails.application.routes.draw do
  get 'user/profile'
  get 'user/pontos'
	root to: 'pages#home'
	devise_for :users
end
