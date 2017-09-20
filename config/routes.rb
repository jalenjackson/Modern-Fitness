Rails.application.routes.draw do
  resources :articles do
    member do
      put :publish
    end
  end

  devise_for :users do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: 'home#index'

  resources :posts do
    resources :comments
  end

end
