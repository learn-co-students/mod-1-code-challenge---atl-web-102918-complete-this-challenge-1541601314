require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customers:
kaeland = Customer.new("kaeland", "chatman")
audrey1 = Customer.new("audrey", "Dortch")
audrey2 = Customer.new("audrey", "Simpson")

# Restaurants:
chilis = Restaurant.new("Chilis")
burger_king = Restaurant.new("Burger King")
chipotle = Restaurant.new("Chipotle")

# Reviews:
review1 = Review.new(kaeland, chilis, 3, "Great place!")
review2 = Review.new(audrey1, chipotle, 4, "Loved the cooking!")

# Tests:
# found_customer = Customer.find_by_name("Audrey Dortch")
customer = review1.customer
restaurant = review1.restaurant
rating = review2.rating
content = review2.content 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line