Rails.application.routes.draw do
  resources :topics do
    resources :posts, expect: [:index]
  end
  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'

  root 'welcome#index'
  # get 'post', to: 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
