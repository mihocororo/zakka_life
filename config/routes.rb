Rails.application.routes.draw do


  namespace :admin do
    get 'shop_comments/show'
    get 'shop_comments/index'
    get 'shop_comments/destroy'
  end
  # namespace :public do
  #   get 'areas/index'
  # end
  # 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

   # ユーザー用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}



#管理者
  namespace :admin do
    root to: 'homes#top'
    get '/' => 'homes#top'
    resources :post_rooms, only: [:show, :update,:index]
    resources :post_shops, only: [:show, :update,:index,:destroy]
    delete 'shop_comments/:id' => 'shop_comments#destroy', as: 'destroy_shop_comment'



    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'

    #エリア
    resources :areas
    delete 'areas/:id' => 'areas#destroy', as: 'destroy_area'


    #店舗
    get 'post_shops/:id' => 'post_shops#show'
    get 'post_shops/update'
    get 'post_shops/index'
    delete 'post_shops/:id' => 'post_shops#destroy', as: 'destroy_post_shop'
    #部屋
    get 'post_rooms/:id' => 'post_rooms#show'
    get 'post_rooms/update'
    get 'post_rooms/index'
    delete 'post_rooms/:id' => 'post_rooms#destroy', as: 'destroy_post_room'


  #顧客情報
    resources :customers, only: [:index, :show, :edit, :update]

  end



#ユーザー
  scope module: :public do
    root to: 'homes#top'

  #レビュー機能
    resources :shop_comments, only: [:show, :index, :update, :new, :edit, :create] do


    end
    delete 'shop_comments/:id' => 'shop_comments#destroy', as: 'destroy_shop_comment'

  #お部屋紹介
    get 'rooms/new' => 'post_rooms#new'
    post 'rooms' => 'post_rooms#create'
    get 'rooms' => 'post_rooms#index'
    get 'rooms/:id' => 'post_rooms#update'
    get 'rooms/:id' => 'post_rooms#destroy'
    delete 'rooms/:id' => 'post_rooms#destroy', as: 'destroy_room'
    get 'rooms/destroy_all' => 'post_rooms#destroy_all'

    get 'rooms/:id/edit' => 'post_rooms#edit', as: 'edit_room'
    patch 'rooms/:id/edit' => 'post_rooms#update', as: 'update_room'

  #ショップ投稿
    get 'shops/new' => 'post_shops#new'
    post 'shops' => 'post_shops#create'
    get 'shops' => 'post_shops#index'
    get 'shops/:id' => 'post_shops#show'
    get 'shops/:id' => 'post_shops#update'
    delete 'shops/:id' => 'post_shops#destroy', as: 'destroy_shop'
    get 'shops/destroy_all' => 'post_shops#destroy_all'

    get 'shops/:id/edit' => 'post_shops#edit', as: 'edit_shop'
    patch 'shops/:id/edit' => 'post_shops#update', as: 'update_shop'
    patch 'shops' => 'post_shops#index', as: 'shop'

  #マイページ
    get 'my_page' => 'customers#show'

  #会員情報
    resources :customers, only: [:edit, :update] do
      get :likes, on: :collection
    end
  #退会
    get 'unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
    patch 'withdraw' => 'customers#withdraw', as: 'withdrawal'


    resources :post_shops, expect: [:index] do
      resource :likes, only: [:create, :destroy]

    end


#トップ画面
    get '/' => 'homes#top'
#アバウト画面
    get 'about' => 'homes#about'

#エリア別一覧
     get 'areas/:id' => 'areas#index'


  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
