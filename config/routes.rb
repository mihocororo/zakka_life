Rails.application.routes.draw do

  namespace :admin do
    get 'post_rooms/show'
    get 'post_rooms/update'
  end
  namespace :admin do
    get 'post_shops/show'
    get 'post_shops/update'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'
  end
  namespace :admin do
    get 'areas/index'
    get 'areas/create'
    get 'areas/edit'
    get 'areas/update'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :public do
    get 'post_rooms/index'
    get 'post_rooms/update'
    get 'post_rooms/destroy'
    get 'post_rooms/destroy_all'
    get 'post_rooms/new'
  end
  namespace :public do
    get 'post_shops/index'
    get 'post_shops/update'
    get 'post_shops/destroy'
    get 'post_shops/destroy_all'
    get 'post_shops/new'
  end
  namespace :public do
    get 'likes/index'
    get 'likes/show'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
    get 'customers/unsubscribe'
    get 'customers/withdraw'
  end
  namespace :public do
    get 'homes/top'
  end
 # 顧客用
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
