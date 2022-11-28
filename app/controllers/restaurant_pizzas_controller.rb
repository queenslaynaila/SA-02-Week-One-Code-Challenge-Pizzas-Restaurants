class RestaurantPizzasController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def create
    restaurant_pizza = RestaurantPizza.create(pizza_params)
    render json: restaurant_pizza.pizza, status: :created
  end

  private
  def pizza_params
    params.permit(:pizza_id, :restaurant_id, :price)
  end

  def render_unprocessable_entity_response(invalid)
    render json: {errors:"validation errors"}, status: :unprocessable_entity
  end
end
