class SheltersController < ApplicationController

  # Show all shelters
  def index
    shelters = Shelter.all
    render json: shelters
  end

  # Show one shelter
  def show
    shelter = Shelter.find(params[:id])
    render json: shelter
  end

  # Create a shelter
  def create
    shelter = Shelter.new(shelter_params)

    if shelter.save
      render json: shelter
    else
      render json: shelter.errors, status: :unprocessable_entity
    end
  end

  # Delete a shelter
  def destroy
    shelter = Shelter.find(params[:id])
    shelter.destroy
  end

  # Strong params
  private

  def shelter_params
    params.require(:shelter).permit(:name, :location_id)
  end

end
