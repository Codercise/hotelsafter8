Vote::Application.routes.draw do
  get "ajax/rooms"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "static/index"

  root to: 'static#index'

end
