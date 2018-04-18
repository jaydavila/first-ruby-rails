Rails.application.routes.draw do


  resources :users do
    resources :posts
  end

  get '/feed', to: 'posts#feed'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

    root 'users#index'

      get '/profile' => 'user#profile', as: 'testing'
end
