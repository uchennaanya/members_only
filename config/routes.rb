Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  devise_for :posts, only: [:new, :create, :destroy, :edit]

  resources :posts, only: [:show, :index]
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
