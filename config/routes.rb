Rails.application.routes.draw do
  get '/users/:id', to: 'users#show'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root               to: 'sessions#new'
  
  resources :users do
    resources :tweets
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
