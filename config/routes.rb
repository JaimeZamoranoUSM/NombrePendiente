Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :solicitudes
  resources :materials
  resources :not_materials
  root 'welcome#index'
end
