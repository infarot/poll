module Api
  class SessionsController < DeviseTokenAuth::SessionsController


  respond_to :json


  protected


  def render_create_success
    render json: @token

  end
  end
  end



