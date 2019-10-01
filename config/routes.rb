Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :memos
  get 'user/index'
  get 'home/index'
  devise_for :users
  get 'users', action: :index, controller: 'user'
  get "/health", to: proc { [200, {}, ['']] }
  root to: 'home#index'
end
