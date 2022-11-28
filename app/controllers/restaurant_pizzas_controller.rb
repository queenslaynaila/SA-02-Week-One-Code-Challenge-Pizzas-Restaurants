class RestaurantPizzasController < ApplicationController
  def create
    restaurant_pizza = RestaurantPizza.create(pizza_params)
    if restaurant_pizza
      render json: restaurant_pizza.pizza, status: :created
    else
      render json: { errors:"validation errors" }, status: :unprocessable_entity
    end
  end

  private
  def pizza_params
    params.permit(:pizza_id, :restaurant_id, :price)
  end
end
