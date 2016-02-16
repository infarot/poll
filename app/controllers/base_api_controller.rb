class BaseApiController < ActionController::Base
  protect_from_forgery with: :null_session
  acts_as_token_authentication_handler_for User
  before_action :load_user

  respond_to :json

  def load_user
    @current_api_user = User.find_by(email: user_email, password: user_password)
  end

  def api_token
    request.headers["Token"] || params[:token]
  end

end
