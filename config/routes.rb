Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show, :index]
  root controller: :articles, action: :index
end
