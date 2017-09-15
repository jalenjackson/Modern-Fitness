Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: 'home#index'

  resources :posts do
    resources :comments
  end

end
