Rails.application.routes.draw do
  get 'sessions/new'
  get 'admins/profile'
  get 'user/profile'
  get 'user/pontos'
<<<<<<< HEAD
  get 'user/edit'
  post 'user/salva_edit'
=======
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'quit'  => 'sessions#destroy'
>>>>>>> 6bf8179d230cc53f96f6ffc63edcbc68eaf42bc2
  resources :admins
  resources :donations
  resources :hospitals
	root to: 'pages#home'
	devise_for :users
end
