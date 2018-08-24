Rails.application.routes.draw do
  devise_for :users
  # if logged in root to user homepage
  authenticated :user do
    root 'users#show', as: :authenticated_root

  end
  # if not logged in root to landing page
  root to: 'pages#home'

  #TODO: Ajaxify new tour form so doesn't need own route

  # only redirect to new pages to see a specific tour, create a new tour,
  # or if logged in as a visitor, sent by an invitation
  resources :tours, only: [:show, :new, :create] do
    resources :activities, only: [:show, :create]
    resources :groups, only: [:show, :create]
  end
  resources :users, only: [:show]

  # TODO: do we need this?
  get 'activities/index'

  # TODO: clean up this mess
  post "invitations/send/:tour_id", to: 'invitations#send_invitations', as: :send_invitations
  get "invitations/:invitation_id/accept", to: 'invitations#accept', as: :accept_invitation
  get "tours/:tour_id/:invitation_id/visitor_show", to: 'tours#visitor_show', as: :visitor_show
  get "tours/:id?status=active", to: 'tours#active_show', as: :active_tour

end
