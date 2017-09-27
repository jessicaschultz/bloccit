Rails.application.routes.draw do
  resources :topics
  resources :posts

  get 'about' => 'welcome#about'

  root 'welcome#index'
  # get 'post', to: 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
