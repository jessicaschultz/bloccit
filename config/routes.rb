Rails.application.routes.draw do
  resources :topics do
    resources :posts, expect: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end
###couldn't tell if this should be deleted in checkpoint28
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root 'welcome#index'
###end####

  # get 'post', to: 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
