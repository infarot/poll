class ApiController < ActionController::Base
  protect_from_forgery with: :null_session
  respond_to :json

  def index
  render json: " questions_url: /questions,\n users_url: /users,\n sessions_url /sessions"
  end


end
