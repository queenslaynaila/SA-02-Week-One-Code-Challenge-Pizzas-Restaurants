class RestaurantSerializer < ActiveModel::Serializer
  attributes :name,:address
 
  has_many :pizzas, through: :restaurant_pizzas
end
