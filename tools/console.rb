require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
davis = Customer.new("davis", "howe")
emily = Customer.new("emily", "gianis")
farley = Customer.new("farley", "ezekiel")
davis2 = Customer.new("davis", "smith")

mary_macs = Restaurant.new("mary macs")
poor_hendrix = Restaurant.new("poor hendrix")
el_taco = Restaurant.new("el taco")
mary_macs2 = Restaurant.new("mary macs")

awesome = Review.new(davis, mary_macs, 5, "best meal ever")
average = Review.new(emily, el_taco, 3, "it was ok")
great = Review.new(emily, mary_macs, 4, "the food was good!")
poor = Review.new(farley, poor_hendrix, 1, "the food was terrible")
still_awesome = Review.new(davis, mary_macs, 5, "still the best meal ever")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
