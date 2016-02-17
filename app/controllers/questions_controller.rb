class QuestionsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @questions = Question.all

    render json: @questions, :status => 200, :content_type => 'application/json'

  end

  def create
    @question = Question.create(:question => params[:question], :user_id => current_user.id)

    params[:choices].each do |choice|
      @choice = Choice.create(:question_id => @question.id , :choice => choice)
    end
      render json: {:question => @question, :choices => @question.choices}, :status => 201, :content_type => 'application/json'
  end



    def show
      @question = Question.find(params[:id])
      render json: {:question => @question, :choices => @question.choices, :creator_email => @question.user.email}, :status => 200, :content_type => 'application/json'
    end

  end


