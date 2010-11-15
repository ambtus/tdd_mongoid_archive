Mongoid::Application.routes.draw do
  devise_for :users
  devise_for :admins

  root :to => "home#index"

  # See how all your routes lay out with "rake routes"
end
