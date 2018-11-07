class Review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating = 1, content = "")
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all 
    @@all 
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def rating
    @rating
  end

  def content
    @content
  end
end

