Rails.application.routes.draw do
  resources :listeds, only: [:index, :update, :destroy]
  resources :houses, only: [:index, :show] do 
    resources :listeds, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
