class Api::QuizzesController < ApplicationController
    def index
        quizzes = Quiz.all
        render json: quizzes, each_serializer: QuizSerializer
    end

    def create
        quiz = Quiz.new(quiz_params)
        quiz.serial = SecureRandom.hex(16).to_s
        quiz.user_id = @current_user.id
        questionObj = Array.new
        questions = Array.new
        quiz.category.questions.each do |obj|
            questionObj.push(obj.attributes.except("created_at", "updated_at", "category_id"))
        end
        questions = questionObj.sample(5)
        quiz.questions = questions
        quiz.save

        if quiz.valid? 
            render json: { quiz: QuizSerializer.new(quiz) }, status: :created
        else
            render json: { errors: quiz.errors.full_messages }, status: :not_accepted
        end
    end

    def show
        quiz = Quiz.find(params[:id])
        render json: { quiz: QuizSerializer.new(quiz)}, status: :ok
    end

    private 

    def quiz_params
        params.require(:quiz).permit(:serial, :user_id, :category_id, :questions)
    end      
end
