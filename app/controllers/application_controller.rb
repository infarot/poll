class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
protected

  def current_user
    return (@user = nil && nil) unless params[:token]
    @user ||= User.where(token: params[:token]).first
  end
  
  def authenticate_user!
    render json: "error".to_json if current_user.nil?
  end
end
