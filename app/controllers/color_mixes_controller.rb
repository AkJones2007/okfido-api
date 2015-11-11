class ColorMixesController < ApplicationController
  # Show all color mixes
  def index
    mixes = ColorMix.all
    render json: mixes
  end

  # Show a color mix
  def show
    mix = ColorMix.find(params[:id])
    render json: mix
  end

  # Create a color mix
  def create
    mix = ColorMix.new(color_params)

    if mix.save
      render json: mix
    else
      render json: mix.errors, status: :unprocessable_entity
    end
  end

  # Delete a color mix
  def destroy
    mix = ColorMix.find(params[:id])
    mix.destroy
  end

  # Strong params
  private

  def color_params
    params.require(:color_mix).permit(:dog_id, :color_id)
  end

end
