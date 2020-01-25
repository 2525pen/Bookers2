Rails.application.routes.draw do

    devise_for :users, :controllers => {
		:registrations => 'users/registrations',
		:sessions => 'users/sessions',
		:passwords => 'users/passwords'
	}
	get "users/:id" => "users#show", as: :mypage


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#top'
    get 'home/about'

    resources :books, only: [:index, :show, :edit]

    resources :users, only: [:show, :edit, :index]

end

# 必要なページ
# rootページ　→home/top　済
# aboutページ　→home/about　済

# users/sign_up
# users/sign_in

# ・users:idページ→　マイページ　ユーザー投稿の一覧&プロフィール
# ・users/:id/edit →edit　プロフィール編集
# ・users/indexページ　→index　ユーザー一覧&プロフィール

# ・books/indexページ　→index　投稿一覧&プロフィール
# ・books/:id showページ　→show カレントユーザーのみ編集可能　投稿詳細&投稿者プロフ
# ・books/:id/editページ　→edit　→リダイレクト先は　books/:id showページ　投稿編集

# 投稿フォームは部分テンプレート　
