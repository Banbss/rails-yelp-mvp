Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :restaurants, only: %i[new index create show] do
    resources :reviews, only: [:create]
  end
end
