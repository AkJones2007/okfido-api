class BreedsController < ApplicationController
  skip_before_action :authenticate, only: :list_dogs

  # Show all breeds
  def index
    breeds = Breed.all
    render json: breeds
  end

  # Show one breed
  def show
    breed = Breed.find(params[:id])
    render json: breed
  end

  # Show all dogs of a given breed
  def list_dogs
    breed = Breed.find(params[:id])
    render json: breed.dogs.all
  end

  # Create a breed
  def create
    breed = Breed.new(breed_params)

    if breed.save
      render json: breed
    else
      render json: breed.errors, status: :unprocessable_entity
    end
  end

  # Delete a breed
  def destroy
    breed = Breed.find(params[:id])
    breed.destroy
  end

  private

  # Strong params
  def breed_params
    params.require(:breed).permit(:name)
  end

end
