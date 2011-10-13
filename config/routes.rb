DeviseExample::Application.routes.draw do
  resources :locks

  resources :posts

  devise_for :users, :admin

  resources :home, :only => :index
  resources :admins, :only => :index

  root :to => 'posts#index'

  match '/token' => 'home#token', :as => :token
end
