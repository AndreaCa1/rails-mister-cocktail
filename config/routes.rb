Rails.application.routes.draw do
  resources :cocktails, only: [:new, :index, :create, :show] do
    resources :doses
  end
  #do
  # resources :ingredients, only: [:create]
  resources :doses, only: [:destroy]
end

  #namespace :manager do
   # resources :restaurants, only: [:index, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
