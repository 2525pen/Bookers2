Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :books
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  resources :homes, only: [:index, :show]
end

