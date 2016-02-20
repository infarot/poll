class UsersController < ApplicationController
  respond_to :json
  
  def create
    @user = User.new(email: params[:email], password: params[:password], full_name: params[:full_name])
    if @user.save
      render json: {:nothing => true, :status => 204, :content_type => 'application/json'}
    else
      render json: "error".to_json
    end
  end

end
