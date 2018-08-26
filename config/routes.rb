Rails.application.routes.draw do
  resources :laudus
  devise_for :users
  get 'welcome/index'
  resources :solicitudes
  resources :materials
  resources :not_materials
  resources :orders
  root 'welcome#index'
end
