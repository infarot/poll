class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
    @users = User.all
    render json: @users
  end
  def create
    @user = User.new(user_params)

    if @user.save
      render json: "Added correctly"
    else
      render json: "Error - check date/data type"
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :full_name)
  end

end
