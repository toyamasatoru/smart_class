Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:index, :edit, :update, :show, :destory]
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update] do
    resource :likes, only: [:create, :destroy]
  end
  get '/quiz', to: 'quiz#show'
  get '/quiz2', to: 'quiz2#show'
end
