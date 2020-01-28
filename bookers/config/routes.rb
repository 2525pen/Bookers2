Rails.application.routes.draw do
    devise_for :users
	# get "users/:id" => "users#show", as: :mypage


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#top'
    get 'home/about'

    resources :books
    resources :users

end
