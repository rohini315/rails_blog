Rails.application.routes.draw do
  get 'users/signinform' => 'users#signinform'
  post 'users/signin' => 'users#signin'

  get 'users/signout' => 'users#signout'
  post 'users/signout' => 'users#signout'

  resources :users
  resources :posts do
    resources :comments
  end

  root 'users#index'

end
