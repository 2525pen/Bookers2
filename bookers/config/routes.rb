Rails.application.routes.draw do
  get 'acount_user/new'
  get 'acount_user/create'
  get 'acount_user/show'
  get 'acount_user/edit'
  get 'profile_images/new'
  get 'profile_images/create'
  get 'profile_images/index'
  get 'profile_images/show'
  get 'profile_images/edit'
  get 'profile_images/update'
  get 'profile_images/dentroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :books
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  resources :homes, only: [:index, :show]
end

