Rails.application.routes.draw do
	get 'email', to: 'page#email'
	get 'google', to: 'page#google'
	get 'pin', to: 'page#pin'
	get 'tesla', to: 'page#tesla'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'page#home'
end
