Lagtv::Application.routes.draw do
  root :to => 'home#index'  

  get 'login', to: 'sessions#create', as: 'login'
  get 'register', to: 'users#new', as: 'register'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :users
  resources :replays do
    collection do
      get 'download'
    end
  end
end
