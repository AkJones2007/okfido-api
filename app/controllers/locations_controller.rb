class LocationsController < ApplicationController

  # Show all of the locations
  def index
    locations = Location.all
    render json: locations
  end

  # Show one location
  def show
    location = Location.find(params[:id])
    render json: location
  end

  # Create a location
  def create
    location = Location.new(location_params)

    if location.save
      render json: location
    else
      render json: location.errors, status: :unprocessable_entity
    end
  end

  # Delete a location
  def destroy
    location = Location.find(params[:id])
    location.destroy
  end

  # Strong params
  private

  def location_params
    params.require(:location).permit(:city, :state)
  end

end
