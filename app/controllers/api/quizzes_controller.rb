class Api::QuizzesController < ApplicationController
    def index
        quizzes = Quiz.all
        render json: quizzes, each_serializer: QuizSerializer
    end

    def create
        quiz = Quiz.new(quiz_params)
        quiz.serial = SecureRandom.hex(16).to_s
        quiz.user_id = @current_user.id
        quiz.save

        if quiz.valid? 
            render json: { quiz: QuizSerializer.new(quiz) }, status: :created
        else
            render json: { errors: quiz.errors.full_messages }, status: :not_accepted
        end
    end

    private 

    def quiz_params
        params.require(:quiz).permit(:serial, :user_id, :category_id)
    end      
end
