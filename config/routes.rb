Rails.application.routes.draw do
  resources :substrings
  # get 'substrings/new'
  # get 'substrings/create'
  # get 'inputs/new'
  # get 'inputs/create'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  root to: "substrings#new"
end
