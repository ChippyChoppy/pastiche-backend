Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :mocktails
      resources :users
      resources :tags, only: [:index, :new, :create]
      resources :measurements, only: [:new, :create]
      resources :users_mocktails
      resources :notes
      resources :mock_ingreds, only: [:new, :create, :delete]
      resources :mock_tags, only: [:new, :create, :delete]
      resources :ingredients, only: [:index, :show]
    end
  end

end
