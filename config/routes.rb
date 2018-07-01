Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :solicitudes
  root 'welcome#index'
end
