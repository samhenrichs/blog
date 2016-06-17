Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get 'pages/contact'
  get 'pages/admin'
  get 'pages/about'
  root 'pages#home'
  resources :links
  resources :campaigns
end
