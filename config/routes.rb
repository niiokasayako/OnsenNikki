Rails.application.routes.draw do
  
  root 'homes#top', as: "/"

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

    get '/' => "homes#top", as: "/"
    get 'users/show' => "users#show", as: "users/my_page"
    get 'users/show/review_search' => "users#review_search", as: "users/my_page/search"
    get 'users/edit' => "users#edit", as: "users/information/edit"
    patch 'users/update' => "users#update", as: "users/information"
    get 'users/unsubscribe'
    patch 'users/withdraw'


    resources :onsens, only: [:index, :show] do
      collection do
        get 'search'
      end
      resource :stamps, only: [:create, :destroy]
      resources :reviews, only: [:new, :edit, :show, :create, :update, :destroy] do
        resources :post_comments, only: [:create, :destroy]
      end
    end
  end

  namespace :admin do
    get '/' => "homes#top", as: "/"
    resources :onsens, only: [:new, :edit, :show, :create, :update] do
      resources :reviews, only: [:edit, :show, :update]
    end
    resources :informations, only: [:index, :edit, :create, :update]
    resources :users, only: [:index, :edit, :update]

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
