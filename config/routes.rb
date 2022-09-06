Rails.application.routes.draw do

 # 顧客用
# URL /users/sign_in ...
devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

namespace :public do
    root to: "homes#top"
    get 'users/show' => "users#show", as: "users/my_page"
    get 'users/edit' => "users#edit", as: "users/information/edit"
    patch 'users/update' => "users#update", as: "users/information"
    get 'users/unsubscribe'
    patch 'users/withdraw'
    resources :reviews, only: [:new, :edit, :show, :create, :update, :destroy]
    resources :onsens, only: [:index, :show]
    resources :post_comments, only: [:create, :destroy]
    resources :samps, only: [:create, :destroy]
  end

  namespace :admin do
    get '/' => "homes#top", as: "/"
    resources :onsens, only: [:new, :edit, :show, :create, :update]
    resources :informations, only: [:index, :edit, :create, :update]
    resources :users, only: [:index, :edit, :update]
    resources :reviews, only: [:edit, :show, :update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
