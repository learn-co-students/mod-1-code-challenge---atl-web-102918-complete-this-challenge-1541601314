require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chill_pad = Restaurant.new("Chill pad")
chill_pad2 = Restaurant.new("Chill pad")
steak_house = Restaurant.new("Steak House")
jimmy = Customer.new("Jimmy", "George")
john = Customer.new("John", "Paul")
johnny = Customer.new("John", "Jon")
full_name1 = "Jimmy George"
full_name2 = "John Paul"

Customer.find_by_name(full_name1)
Customer.find_all_by_first_name("John")

Customer.all_names
Restaurant.find_by_name("Chill pad")

hm = Review.new(jimmy, chill_pad, "Cool place", 4)
hmm = Review.new(john, steak_house, "Amazing", 5)

hm.customer_reivew

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
