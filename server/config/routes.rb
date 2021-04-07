Rails.application.routes.draw do
  get 'snacks/index'
  # browser will be /v1/users
  namespace :v1 do
    resources :snacks
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
