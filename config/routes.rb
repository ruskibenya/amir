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


  post "invitations/send/:tour_id", to: 'invitations#send_invitations', as: :send_invitations
  get "invitations/:invitation_id/accept", to: 'invitations#accept', as: :accept_invitation
  get "tours/:tour_id/:invitation_id/visitor_show", to: 'tours#visitor_show', as: :visitor_show

  resources :users, only: [:show]
end
