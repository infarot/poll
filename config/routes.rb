Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'api/sessions', controllers: {
      sessions:  'api/sessions'
  }

  namespace :api do
      resources :users, :only => :create
  end

end
