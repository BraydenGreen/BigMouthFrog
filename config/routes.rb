Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :featured_clients
    resources :leads
    resources :notes

    root to: "users#index"
  end
 # resources :featured_clients

  resources :notes
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  root to: 'pages#home'

  get '/about', to: 'pages#about'
  get '/featured-clients', to: 'pages#portfolio'

  resources :leads
  get '/contact', to: 'leads#new'


  mount ActionCable.server => '/cable'

end
