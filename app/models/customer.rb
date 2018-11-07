class Customer
  attr_accessor :first_name, :last_name

  # - `Customer.all`
  #   - should return **all** of the customer instances
  # - `Customer.find_by_name(name)`
  #   - given a string of a **full name**, returns the **first customer** whose full name matches
  # - `Customer.find_all_by_first_name(name)`
  #   - given a string of a first name, returns an **array** containing all customers with that first name
  # - `Customer.all_names`
  #   - should return an **array** of all of the customer full names

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

  def self.find_by_name(full_name)
   Customer.all.find do|cust|
      cust.first_name == full_name.split[0] && cust.last_name == full_name.split[1]
    end
  end

  def self.find_all_by_first_name(first_name_arg)
    Customer.all.select do |cust|
      cust.first_name == first_name_arg
    end
  end

  def Customer.all_names
    Customer.all.map do |cust|
      "#{cust.first_name} #{cust.last_name}"
    end
  end

end
