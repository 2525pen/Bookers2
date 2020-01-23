Rails.application.routes.draw do

    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#top'
    get 'home/about'

    resources :books, only: [:index, :show] do
    	resources :users, only: [:index, :show]
    end

    resources :users, only: [:index, :show] do
    	resources :books, only: [:index, :show]
    end

    resources :books, controller: 'users_books'
    resources :users, controller: 'users_info' ,only: [:edit, :update]

end