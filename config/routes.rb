Rails.application.routes.draw do
  resources :featured_clients
  resources :notes
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  root to: 'pages#home'

  get '/about', to: 'pages#about'

  resources :leads
  mount ActionCable.server => '/cable'

end
