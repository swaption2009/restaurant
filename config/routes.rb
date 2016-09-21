Rails.application.routes.draw do
  root 'home#index'

  resources :menus
  resources :restorans
  devise_for :users

  resources :setup_organization

  authenticated do
    get '/' => 'dashboard#show', :constraints => Subdomain, :as => 'dashboard'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
