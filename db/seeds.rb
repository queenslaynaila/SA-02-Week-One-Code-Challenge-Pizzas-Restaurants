puts " Seeding restaurants..."
Restaurant.create([
  {
    name: "Pizza inn",
    address: "Nairobi cbd"
  },
  {
    name: "Dominoes Pizza",
    address: "Westlands"
  },
  {
    name: "Pepinoes Pizza",
    address: "Nairobi cbd"
  }
])

puts "Seeding pizzas..."
Pizza.create([
  {
    name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese"
  },
  {
    name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
  },
  {
    name: "BBQ Chicken",
    ingredients: "Dough, BBQ sauce, Chicken, Cilantro, Red Onions, Cheese"
  },
  {
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
  }
])

puts "Adding pizzas to restaurants..."
RestaurantPizza.create([
  {
    pizza_id: "1",
    restaurant_id: "3",
    price:rand(5..35)
  },
  {
    pizza_id: "2",
    restaurant_id: "2",
    price:rand(5..35)
  },
  {
    pizza_id: "3",
    restaurant_id: "1",
    price:rand(5..35)
  },
  {
    pizza_id: "4",
    restaurant_id: "1",
    price:rand(5..35)
  }
])

puts "Done seeding!"
