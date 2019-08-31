Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'welcome#index'
end
