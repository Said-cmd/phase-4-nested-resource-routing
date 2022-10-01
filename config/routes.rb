Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do 
    # nested resource for reviews
    resource :reviews, only: [:show, :index]
  end
  resources :reviews, only: [:show, :index, :create]
end
