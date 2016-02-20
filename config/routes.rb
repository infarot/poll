Rails.application.routes.draw do

  resource :sessions
  root to: "api#index"


  resources :users, :only => :create
  resources :questions do
    resources :choices, :only => :update
    #use PUT to vote on something
  end

end
