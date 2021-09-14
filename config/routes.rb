Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end

  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "static_pages/home"
    get "static_pages/help"
    devise_for :users
    resources :users

    resources :blogs
  end
end
