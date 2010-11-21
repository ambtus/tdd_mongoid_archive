TddMongoid::Application.routes.draw do
# See how all your routes lay out with "rake routes"

  devise_for :users, :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  devise_for :admins, :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users, :only => [] do
    get :leave
    resources :pseuds
  end

  match "/users/:user_id/pseuds/:pseud_id/make_default", :to => 'users#update', :as => 'update_default'

  resources :people, :only => [:index, :show]

  root :to => "home#index"

end
