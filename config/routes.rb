Rails.application.routes.draw do
  resources :apps
  devise_for :users
end
