class RestaurantsController < ApplicationController
  def index
    render json: Restaurant.all
  end


  def show
    restaurant = find_restaurant
    render json: restaurant, except: [:created_at, :updated_at]
  end


  def destroy
    restaurant = find_restaurant
    if restaurant
      restaurant.destroy
       head :no_content, status: 200
    else
      render json: { errors:"Restaurant not found" }, status: :unprocessable_entity
    end
  end


  private

  def find_restaurant
    Restaurant.find(params[:id])
  end

end
