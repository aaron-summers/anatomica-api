class Api::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories, each_serializer: CategorySerializer
    end

    def create
        category = Category.create(category_params)
        
        if category.valid? 
            render json: { category: CategorySerializer.new(category) }, status: :created
        else
            render json: { errors: category.errors.full_messages }, status: :not_accepted
        end
    end

    private 

    def category_params
        params.require(:category).permit(:system)
    end       
end
