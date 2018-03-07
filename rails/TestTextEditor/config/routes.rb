Rails.application.routes.draw do

  resources :books
  post "create_event", to:'pages#create_event', as: 'create_event'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'pages#home'
  root to: 'books#index'
end
