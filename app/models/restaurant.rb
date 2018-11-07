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

  def self.find_by_name(rest_name)
    Restaurant.all.find do |rest|
      rest.name == rest_name
    end
  end
  # - `Restaurant.all`
  #   - returns an array of all restaurants
  # - `Restaurant.find_by_name(name)`
  #   - given a string of restaurant name, returns the first restaurant that matches


end
