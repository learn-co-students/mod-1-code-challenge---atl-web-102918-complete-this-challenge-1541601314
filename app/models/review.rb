require 'pry'

class Review

  attr_reader :customer, :name
  attr_accessor :review

  @@all = []

  def initialize(review)
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

end
