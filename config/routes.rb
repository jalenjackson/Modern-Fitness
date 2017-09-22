Rails.application.routes.draw do
  resources :articles do
    member do
      put :publish
    end
  end


  get '/user/:id' => 'profiles#profile'

  devise_for :users, :controllers => { registrations: 'registrations' }


  root to: 'home#index'

  resources :posts do
    resources :comments
  end

end
