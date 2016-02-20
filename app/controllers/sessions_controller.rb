class SessionsController < ApplicationController
  
  def create
    user = User.where(email: params[:login]).first
    if user && user.valid_password?(params[:password])
      user.update_attribute(:token, SecureRandom.hex(32))
      render json: {token: user.token}
    else
      render json: "error".to_json
    end 
  end
  
  def destroy
    current_user.update_attribute(:token, nil)
    render json: {:nothing => true, :status => 204, :content_type => 'application/json'}
  end
  

end



