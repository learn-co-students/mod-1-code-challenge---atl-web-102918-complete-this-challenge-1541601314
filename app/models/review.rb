class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@review = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@review << self
  end

  def self.all
    @@review
  end

end
