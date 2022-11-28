class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :restaurant
  belongs_to :pizza
end
