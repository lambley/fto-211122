Rails.application.routes.draw do
  devise_for :users
  get 's3/direct_post'
  get 's3/get_images'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
