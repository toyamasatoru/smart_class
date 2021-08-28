Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update] do
    resource :likes, only: [:create, :destroy]
  end
end
