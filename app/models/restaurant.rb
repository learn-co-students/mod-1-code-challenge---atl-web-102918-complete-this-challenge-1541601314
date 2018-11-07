require 'pry'

class Restaurant
  attr_reader :customer, :review

  @@all = []

  def initialize(name, review, customer)
    @name = name
    @customer = customer
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurants.all.select do |restaurant|
      restaurant.name == name
    end
  end

binding.pry


end
