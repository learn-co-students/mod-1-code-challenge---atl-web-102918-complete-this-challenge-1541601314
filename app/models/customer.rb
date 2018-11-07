class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    split_fullname = name.split(" ")
    first_name = split_fullname[0]
    last_name = split_fullname[1]
    Customer.all.find do |customer|
     customer.first_name.downcase == first_name.downcase && customer.last_name.downcase == last_name.downcase
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name.downcase == name.downcase
    end
  end

  def self.all_names
    Customer.all.collect do |customer|
      customer.full_name
    end
  end
end
