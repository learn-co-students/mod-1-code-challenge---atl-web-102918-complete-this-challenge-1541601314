class Review

  # - `Review.all`
  #   - returns all of the reviews
  # - `Review#customer`
  #   - returns the customer object for that given review
  #   - Once a review is created, I should not be able to change the author
  # - `Review#restaurant`
  #   - returns the restaurant object for that given review
  #   - Once a review is created, I should not be able to change the restaurant
  # - `Review#rating`
  #   - returns the star rating for a restaurant. This should be an integer from 1-5
  # - `Review#content`
  #   - returns the review content, as a string, for a particular review
    @@all = []
    attr_reader :customer, :restaurant, :review, :rating
    def initialize(customer, restaurant, review, rating)
      @customer = customer
      @restaurant = restaurant
      @review = review
      @@all << self
    end

    def self.all
      @@all
    end

    def customer_review
      self.customer
    end

    def restaurant_review
      self.restaurant.name
    end

    def self.rating


    end

    def self.content
      self.review
    end


end
