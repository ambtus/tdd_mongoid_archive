Mongoid::Application.routes.draw do

  devise_for :users, :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  devise_for :admins, :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  root :to => "home#index"

  # See how all your routes lay out with "rake routes"
end
