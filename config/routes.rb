Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'sessions', controllers: {
      sessions:  'sessions'
  }
  root to: "api#index"

  namespace :api do
      resources :users, :only => :create
  end

end
