Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:index, :edit, :update, :show, :destory] do
    resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
  end
  
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update] do
    resource :likes, only: [:create, :destroy]
  end
  get '/quiz', to: 'quiz#show'
  get '/quiz2', to: 'quiz2#show'
  get '/quiz3', to: 'quiz3#show'
end
