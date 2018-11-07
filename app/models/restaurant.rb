class Restaurant
  attr_accessor :name

  @@restaurant = []

  def initialize(name)
    @name = name
    @@restaurant << self
  end

  def self.all
    @@restaurant
  end

 def self.find_by_name(name)
   self.all.find do |restaurant|
     restaurant == name
   end
 end

 def customers
   customers = []
   Review.all.each do |place|
     if place.restaurant == self
     customers << place.customer
    end
   end
   customers
 end

 def reviews
   reviews = []
   Review.all.each do |place|
     if place.restaurant == self
     reviews << place.content
    end
   end
   reviews
 end



end
