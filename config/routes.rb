Rails.application.routes.draw do
  resources :apps
  devise_for :users
  as :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
end
