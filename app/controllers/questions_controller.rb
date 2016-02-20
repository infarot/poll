class QuestionsController < ApplicationController
  before_action :authenticate_user!
  def index
    questions = Question.all
    render json: questions, each_serializer: QuestionSerializer
  end

  def create
    question = current_user.questions.create(:question => params[:question])
    choices = params[:choices].split(",").map do |choice|
      question.choices.create(:choice => choice)
    end
    render json: QuestionSerializer.new(question)
  end

  def show
    question = Question.find(params[:id])
    render json: QuestionSerializer.new(question)
  end

end


