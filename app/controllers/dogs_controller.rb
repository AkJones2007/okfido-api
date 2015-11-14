class DogsController < ApplicationController
  skip_before_action :authenticate, only: :index

  # Show me ALL THE DOGS
  def index
    @dogs = Dog.all
    render json: @dogs, each_serializer: DogSerializer, root: 'dogs'
  end

  # Show me one dog
  def show
    dog = Dog.find(params[:id])
    render json: dog
  end

  # Show me a dog's breed mix
  def list_breeds
    dog = Dog.find(params[:id])
    render json: dog.breeds
  end

  # Show me a dog's color mix
  def list_colors
    dog = Dog.find(params[:id])
    render json: dog.colors
  end

  # Create a dog
  def create
    dog = Dog.new(dog_params)

    if dog.save
      render json: dog
    else
      render json: dog.errors, status: :unprocessable_entity
    end
  end

  # Update a dog
  def update
    dog = Dog.find(params[:id])
    if dog.update(dog_params)
      render json: dog
    else
      render json: dog.errors, status: :unprocessable_entity
    end
  end

  # Delete a dog
  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :gender, :dob, :bio, :size, :location_id, :shelter_id)
  end

end
