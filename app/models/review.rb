class Review
  attr_reader :customer, :restaurant
  attr_accessor :review_content, :rating
    @@all = []

    def initialize(customer, restaurant, review_content, rating=0)
      @customer = customer
      @restaurant = restaurant
      @review_content = review_content
      @rating = rating
      @@all << self
    end

    def self.all
      @@all
    end

# Review#customer
# returns the customer object for that given review
# Once a review is created, I should not be able to change the author
# Review#restaurant
# returns the restaurant object for that given review
# Once a review is created, I should not be able to change the restaurant
# Review#rating
# returns the star rating for a restaurant. This should be an integer from 1-5
# Review#content
# returns the review content, as a string, for a particular review

end
