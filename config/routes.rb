Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # lines 9 & 10 are the same
  # resources :articles, only: [:index, :show, :create, :update, :destroy]
  resources :articles, except: [:new, :edit]
end
