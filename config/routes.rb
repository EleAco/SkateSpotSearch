Rails.application.routes.draw do

  root "home#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  get 'users/:id', to: 'users#show'
  post "/" => 'home#index'
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

  resources :users

  # ブロック関数を使用
  resources :maps do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end
end