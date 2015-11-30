class FavoritesController < ApplicationController

  skip_before_action :authenticate

  # Show all favorites for the current user
  def index
    favorites = Favorite.all
    render json: favorites
  end

  # Show one favorite for the current user
  def show
    favorite = Favorite.find(params[:id])
    render json: favorite
  end

  # Add a favorite for the current user
  def create
    favorite = Favorite.new(favorite_params)

    if favorite.save
      render json: favorite
    else
      render json: favorite.errors, status: :unprocessable_entity
    end
  end

  # Delete a favorite for the current user
  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
  end

  private

  # Strong params
  def favorite_params
    params.require(:favorite).permit(:dog_id, :user_id)
  end


end
