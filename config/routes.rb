Rails.application.routes.draw do
  # get 'sponsored_posts/show'
  #
  # get 'sponsored_posts/new'
  #
  # get 'sponsored_posts/edit'

  resources :topics do
    resources :posts, expect: [:index]
    resources :sponsored_posts
    # get 'sponsored_posts/show'
    #
    # get 'sponsored_posts/new'
    #
    # get 'sponsored_posts/edit'
  end


  get 'about' => 'welcome#about'

  root 'welcome#index'
  # get 'post', to: 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
