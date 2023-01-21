Rails.application.routes.draw do

#管理者
  namespace :admin do


    resources :post_rooms, only: [:show, :update]

    get 'post_shops/show'
    get 'post_shops/update'

    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'

    resources :areas
    # get 'areas/index'
    # get 'areas/create'
    # get 'areas/edit'
    # get 'areas/update'

    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end


#ユーザー
  scope module: :public do

  #お部屋紹介
    get 'rooms' => 'post_rooms#index'
    get 'rooms/:id' => 'post_rooms#update'
    get 'rooms/:id' => 'post_rooms#destroy'
    get 'rooms/destroy_all' => 'post_rooms#destroy_all'
    get 'rooms/new' => 'post_rooms#new'

  #ショップ投稿
    get 'shops' => 'post_shops#index'
    get 'shops/:id' => 'post_shops#update'
    get 'shops/:id' => 'post_shops#destroy'
    get 'shops/destroy_all' => 'post_shops#destroy_all'
    get 'shops/new' => 'post_shops#new'

  #お気に入りページ
    resources :likes, only: [:show, :index]
  #会員情報
    resources :customers, only: [:show, :edit, :update, :unsubscribe, :withdraw]
    # get 'customers/show'
    # get 'customers/edit'
    # get 'customers/update'
    # get 'customers/unsubscribe'
    # get 'customers/withdraw'

#トップ画面
    get '/' => 'homes#top'
#アバウト画面
    get 'about' => 'homes#about'


  end
 # ユーザー用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
