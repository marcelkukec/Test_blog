Rails.application.routes.draw do
  devise_for :users
  mount Commontator::Engine => '/commontator'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to:'posts#index'

  default_url_options :host => "mk-blog-2021.herokuapp.com"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :posts, only: [:index]
    end
  end
end
