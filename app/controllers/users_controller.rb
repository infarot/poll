class UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all
    render json: @users
  end
  def create
    @user = User.new(user_params)

    if @user.save
      render json: {:nothing => true, :status => 204, :content_type => 'application/json'}
    else
      render json: "error"
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :full_name)
  end

end
