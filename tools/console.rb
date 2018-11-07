require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


bob = Customer.new('bob')
janet = Customer.new('janet')

review1 = Review.new(bob)
review2 = Review.new(janet)

Restaurant.new('Olde Pink House', review1, bob)
Restaurant.new('Mrs. Wilkes House', review2, janet)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
