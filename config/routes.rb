Rails.application.routes.draw do
  get 'invitations/new'
  get 'invitations/create'
  get 'groups/new'
  get 'groups/create'
  get 'groups/edit'
  get 'groups/update'
  get 'groups/destroy'
  get 'groups/show'
  get 'groups/index'
  get 'tours/create'
  get 'tours/new'
  get 'tours/edit'
  get 'tours/update'
  get 'tours/show'
  get 'tours/index'
  get 'tours/selectgroupdestroy'
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
end
