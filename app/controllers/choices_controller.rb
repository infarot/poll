class ChoicesController < ApplicationController

def index
  @choice = Choice.where(:question_id => params[:question_id])

  render json: @choices

end

  def create
    #binding.pry
    @choice = Choice.where(:id => params[:choice_id], :question_id => params[:question_id]).first
    if @choice.present?
      if @choice.increment!(:votes,1)
        render json: @choice, :status => 201, :content_type => 'application/json'
      end
    end
   end
end
