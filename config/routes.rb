Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  get "/health", to: proc { [200, {}, ['']] }
  root to: 'home#index'
end
