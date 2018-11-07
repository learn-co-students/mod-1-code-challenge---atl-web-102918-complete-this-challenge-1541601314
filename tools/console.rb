require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
chow = Restaurant.new("chow")
eats = Restaurant.new("eats")
food = Restaurant.new("food")

kwam = Customer.new("kwamena", "amissah")
dev = Customer.new("devon", "horton")
devon = Customer.new("devon", "black")
bruce = Customer.new("charles", "solomon")

review1 = Review.new(bruce, chow, "food was solid.", 3)
review2 = Review.new(dev, chow, "food was meh.",4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
