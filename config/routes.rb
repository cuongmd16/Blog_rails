Rails.application.routes.draw do
  resources :profiles
  resources :blogs
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "static_pages/home"
    get "static_pages/help"
    devise_for :users
    resources :users

    resources :blogs
  end
end
