Rails.application.routes.draw do
  # browser will be /v1/users
  namespace :api do
    namespace :v1 do
      resources :snacks#, only: [:index, :create] #uses only the routes in the array.
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

