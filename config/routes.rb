Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'what_we_do', to: 'pages#what_we_do'
  get 'about_us', to: 'pages#about_us'
  get 'live_roles', to: 'pages#live_roles'
  get 'news', to: 'pages#news'
  get 'contact', to: 'pages#contact'
end