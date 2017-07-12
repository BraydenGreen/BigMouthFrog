Rails.application.routes.draw do
  resources :notes
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  root to: 'pages#home'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :leads
  mount ActionCable.server => '/cable'

end