class BreedMixesController < ApplicationController
  # Show all breed mixes
  def index
    mixes = BreedMix.all
    render json: mixes
  end

  # Show one breed mix
  def show
    mix = BreedMix.find(params[:id])
    render json: mix
  end

  # Create a breed mix
  def create
    mix = BreedMix.new(mix_params)

    if mix.save
      render json: mix
    else
      render json: mix.errors, status: :unprocessable_entity
    end
  end

  # Delete a breed mix
  def destroy
    mix = BreedMix.find(params[:id])
    mix.destroy
  end

  # Strong params
  private

  def mix_params
    params.require(:breed_mix).permit(:dog_id, :breed_id)
  end


end
