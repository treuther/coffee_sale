class CoffeeSale::Coffee
  
  attr_accessor :name, :orig_price, :sale_price
  
  @@all = []
  
  def initialize(student_hash)
    student_hash.each {|k, v| self.send(("#{k}="), v)}
    @@all << self
  end
  
  def self.create_from_collection(coffees_array)
    coffees_array.each do |coffees_info|
      self.new(coffees_info)
    end
  end
  
  def add_coffee_attributes(attributes_hash)
    attributes_hash.each do |k,v|
      self.send(("#{k}="), v)
    end
    self
  end
  
  def self.all
    @@all
  end
  
end