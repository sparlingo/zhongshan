Rails.application.routes.draw do
  resource :wechat, only: [:show, :create]
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :albums
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  get 'about-us', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
