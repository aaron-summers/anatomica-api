class Api::OptionsController < ApplicationController

  # GET /options
  def index
    options = Option.all

    render json: options, each_serializer: OptionSerializer
  end

  # POST /options
  def create
    option = Option.create(option_params)
    if option.valid?
      render json: { option: OptionSerializer.new(option) }, status: :created
    else
      render json: { errors: option.errors.full_messages }, status: :not_accepted
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def option_params
      params.require(:option).permit(:content, :question_id)
    end
end
