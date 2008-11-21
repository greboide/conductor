ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => 'users'
  map.resources :passwords
  map.resources :users
  map.resource :session, :controller => 'user_sessions'

  map.root :controller => 'user_sessions', :action => 'new'
end
