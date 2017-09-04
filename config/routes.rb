Rails.application.routes.draw do
  get 'enquiries/create'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get 'what_we_do', to: 'pages#what_we_do'
  get 'about_us', to: 'pages#about_us'
  get 'live_roles', to: 'pages#live_roles'
  get 'news', to: 'pages#news'
  get 'contact', to: 'pages#contact'

  resources :enquiries, only: [:create]
  resources :job_application, only: [:create]

end
