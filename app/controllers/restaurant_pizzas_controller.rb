class RestaurantPizzasController < ApplicationController
  def create
    restaurant_pizza = RestaurantPizza.create(pizza_params)
    render json: restaurant_pizza.pizza, status: :created
  end

  private
  def pizza_params
    params.permit(:pizza_id, :restaurant_id, :price)
  end
end
