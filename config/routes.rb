Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :articles

  devise_for :users
  resources :posts do
  	resources :comments
  end

  root "posts#index"
  # root to: "articles#index"

  get '/about', to: 'pages#about'

end
