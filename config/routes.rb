Rails.application.routes.draw do
  resources :mes
  devise_for :users
  root 'mes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
