Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resource :session, only: [:new,:create,:destroy]
  resources :bands
  resources :bands do
    resources :albums, only: :new
  end
  resources :albums, only: [:create,:edit,:show,:update,:destroy]
end
