require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

will = Customer.new("william", "george")
mollie = Customer.new("mollie", "fucich")

outback = Restaurant.new("outback")
bbq = Restaurant.new("bbq")

reviewone = Review.new(will, outback, "My steak was cooked perfectly, our waitress kept our drinks full, and we had a great time!", 4)

reviewtwo = Review.new(mollie, bbq, "I love this bbq shack. The pork is to die for, the collard greens are fire, and they always have fried okra!", 5)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
