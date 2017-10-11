Rails.application.routes.draw do

  resources :products do
    resources :galleries
  end

  resources :articles do
    member do
      put :publish
    end
  end

  get '/account' => 'accounts#index'

  get '/products/all' => 'products#all'

  get '/user/:id' => 'profiles#profile'

  get '/startselling' => 'startselling#index'

  devise_for :users, :controllers => { registrations: 'registrations' }


  root to: 'home#index'

  resources :posts do
    resources :comments
  end

end
