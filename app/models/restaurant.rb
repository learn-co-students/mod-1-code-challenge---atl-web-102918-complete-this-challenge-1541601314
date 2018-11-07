class Restaurant

  attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |rev|
    rev.restaurant == self
    end
  end

  def customers
    self.reviews.map do |rev|
      rev.customer
  end
end

end

  # Restaurant#average_star_rating
  # returns the average star rating for a restaurant based on its reviews


  # Restaurant#longest_review
  # returns the longest review content for a given restaurant


#   Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
