class ChoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_choices

  def update
    choice = @choices.find(params[:id]) #it will render 404 otherwise
    choice.increment!(:votes, 1) #this cannot really fail
    render json: {:nothing => true, :status => 201}
  end
  
protected

  def get_choices
    @choices = Choice.where(question_id: params[:question_id])
  end
end
