Rails.application.routes.draw do
  resources :users
  resources :shimonokus
  resources :kaminokus
  root 'pages#index'
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
