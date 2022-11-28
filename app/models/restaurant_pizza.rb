class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
  validates_inclusion_of :price, :in => 1..30
 
end
