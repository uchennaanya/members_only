Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  # devise_for :posts, only: [:new, :create, :destroy, :edit, :new, :index, :show]

  resources :posts, only: [:new, :create, :destroy, :edit, :index, :show, :update]
  root to: 'posts#index'
end
