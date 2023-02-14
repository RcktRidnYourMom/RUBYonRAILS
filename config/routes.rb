Rails.application.routes.draw do
  resources :users, only:[:new, :create]
  root "articles#index"

  resources :articles do
    resources :comments


    get '/login', to: 'sessions#new', as: 'login'
    post '/sessions', to: 'sessions#create', as: 'sessions'
    delete '/sessions', to: 'sessions#destroy'

    
  end
end