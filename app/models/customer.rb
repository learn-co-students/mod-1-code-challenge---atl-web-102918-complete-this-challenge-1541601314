class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.find_by_name(name)
    Customer.all.first do |customer|
      customer.name ==
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |name|
      first_name == name
    end
  end

  def self.all_names
    Customer.full_name.each do |


  def full_name
    "#{first_name} #{last_name}"
  end
end
