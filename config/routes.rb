ActionController::Routing::Routes.draw do |map|
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'

  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'

  map.resource :account, :controller => 'users'
  map.resources :password_resets
  map.resources :users
  map.resource :user_session

  map.default '/', :controller => 'user_sessions', :action => 'new'
end
