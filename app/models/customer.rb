class Customer
  attr_accessor :first_name, :last_name

  @@customer = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customer << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customer
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer == name
    end
  end

  def self.find_all_by_first_name(name)
    first_name = []

    self.all.each do |customer|
      if customer.first_name == name.first_name
       first_name << customer
      end
    end
    first_name
  end

  def self.all_names
    self.all.map do |name|
      name.full_name
    end
  end

  def add_review(restaurant, content, rating)

  end

  def restaurants
    restaurants = []
    Review.all.each do |person|
      if person.customer == self
      restaurants << person.restaurant
     end
    end
    restaurants
  end

end
