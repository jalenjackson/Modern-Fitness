Rails.application.routes.draw do

  resources :products do
    resources :galleries
  end

  resources :articles do

    member do
      put "like" => "articles#upvote"
      put "unlike" => "articles#downvote"
    end

    member do
      put :publish
    end
  end



  get 'articles/:id/likes' => 'articles#likes'

  get '/community' => 'community#index'

  get '/account' => 'accounts#index'

  get '/products/all' => 'products#all'

  get '/user/:id' => 'profiles#profile'
  get '/user/:id/friends' => 'profiles#followers'
  get '/user/:id/articles' => 'profiles#articles'



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

    member do
      put "like" => "posts#vote"
    end
    resources :comments
  end
end
