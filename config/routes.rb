Rails.application.routes.draw do
  
  root 'pages#home'
  get 'login', to: 'sessions#new'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
