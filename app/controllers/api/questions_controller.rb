class Api::QuestionsController < ApplicationController

  # GET /questions
  def index
    questions = Question.all
    render json: questions, each_serializer: QuestionSerializer
  end

  # POST /questions
  def create
    question = Question.create(question_params)
    if question.valid?
      render json: { question: QuestionSerializer.new(question) }, status: :created
    else
      render json: { errors: question.errors.full_messages }, status: :not_accepted
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:content, :category_id, :answer)
    end
end
