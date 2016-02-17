Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'sessions', controllers: {
      sessions:  'sessions'
  }
  root to: "api#index"


  resources :users, :only => :create
  resources :questions do
    resources :choices, :except => :create
    post 'choices/:choice_id' => 'choices#create'
  end

end
