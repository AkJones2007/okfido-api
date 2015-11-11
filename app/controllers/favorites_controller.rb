class FavoritesController < ApplicationController

  # Show all favorites for the current user
  def index
    favorites = current_user.dogs.all
    render json: favorites
  end

  # Show one favorite for the current user
  def show
    index = params[:id].to_i - 1

    if index < 0
      render json: favorite.errors, status: :unprocessable_entity
    end

    all_favorites = current_user.dogs.all
    favorite = all_favorites[index]
    render json: favorite
  end

  # Add a favorite for the current user
  def create
    favorite = Favorite.new(favorite_params)
    favorite.user_id = current_user.id

    if favorite.save
      render json: favorite
    else
      render json: favorite.errors, status: :unprocessable_entity
    end
  end

  # Delete a favorite for the current user
  def destroy
    index = params[:id].to_i - 1
    all_favorites = Favorite.all.select{ |item| item.user_id == current_user.id }
    favorite = all_favorites[index]
    favorite.destroy
  end

  # Strong params
  def favorite_params
    params.require(:favorite).permit(:dog_id)
  end


end
