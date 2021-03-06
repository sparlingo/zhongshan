Rails.application.routes.draw do
  
  resources :topics, only: [:index, :show]

  resources :comments
  resources :wechat, only: [:show, :create]
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  resources :albums do
    put :sort, on: :collection
  end
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  mount Ckeditor::Engine => '/ckeditor'
  
  get 'about-us', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
