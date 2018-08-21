Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tours do
    resources :activities, only: [:create, :new, :edit, :update, :show, :destroy]
    member do
      patch :selectgroup
    end
    resources :groups, only: [:new, :create]
  end
  resources :groups
  resources :invitations, only: [:new, :create ]
  resources :users, only: [:show]
end
