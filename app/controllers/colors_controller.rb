class ColorsController < ApplicationController
  skip_before_action :authenticate, only: :list_dogs

  # Show all colors
  def index
    colors = Color.all
    render json: colors
  end

  # Show a color
  def show
    color = Color.find(params[:id])
    render json: color
  end

  # Show all dogs of a given color
  def list_dogs
    color = Color.find(params[:id])
    render json: color.dogs
  end

  # Create a color
  def create
    color = Color.new(color_params)

    if color.save
      render json: color
    else
      render json: color.errors, status: :unprocessable_entity
    end
  end

  # Delete a color
  def destroy
    color = Color.find(params[:id])
    color.destroy
  end

  private

  # Strong Params
  def color_params
    params.require(:color).permit(:name)
  end

end
