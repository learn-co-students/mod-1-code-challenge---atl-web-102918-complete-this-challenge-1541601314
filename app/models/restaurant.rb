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

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    temp = Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end
    temp.uniq.compact
  end

  def rating
    Review.all.each do |review|
      if review.restaurant == self
        return review.rating
      end
    end
  end

  def num_review
    i = 0
    Review.all.each do |review|
      if review.restaurant == self
        i +=1
      end
    end
    i
  end

  def average_star_rating
    total = 0
    self.reviews.each do |review|
      total += review.rating
    end
    total/self.num_review
  end

  def review_content
    my_reviews = self.reviews.map do |review|
      review.content
    end
    my_reviews.compact
  end

  def content_length
    self.review_content.map do |string|
      string.length
    end
  end

  def longest_review
    longest = self.content_length.max
    self.reviews.select do |review|
      review.content.length == longest
    end
  end

end
