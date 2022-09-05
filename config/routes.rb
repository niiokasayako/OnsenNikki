Rails.application.routes.draw do
  namespace :admin do
    get 'reviews/show'
    get 'reviews/edit'
  end
  namespace :admin do
    get 'users/index'
    get 'users/edit'
  end
  namespace :admin do
    get 'informations/index'
    get 'informations/edit'
  end
  namespace :admin do
    get 'onsens/new'
    get 'onsens/show'
    get 'onsens/edit'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'reviews/new'
    get 'reviews/edit'
    get 'reviews/show'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/unsubscribe'
    get 'users/withdraw'
  end
  namespace :public do
    get 'onsens/index'
    get 'onsens/show'
  end
  namespace :public do
    get 'homes/top'
  end
 # 顧客用
# URL /users/sign_in ...
devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, controllers: {
  sessions: "admin/sessions"
}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
