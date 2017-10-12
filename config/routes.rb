Rails.application.routes.draw do

  resources :products do
    resources :galleries
  end

  resources :articles do
    member do
      put :publish
    end
  end

  get '/community' => 'community#index'

  get '/account' => 'accounts#index'

  get '/products/all' => 'products#all'

  get '/user/:id' => 'profiles#profile'
  get '/user/:id/friends' => 'profiles#followers'


  get '/startselling' => 'startselling#index'

  get '/friends' => 'friends#index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships


  root to: 'home#index'

  resources :posts do
    resources :comments
  end

end
