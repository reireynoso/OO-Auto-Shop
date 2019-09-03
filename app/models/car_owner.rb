class CarOwner

  attr_reader :name
  @@all =[]
  def initialize(name)
    @name = name

    @@all << self
  end
  
  def list_of_all_cars_owner_has
    #returns an array where cars belong to specific user instance
    Car.all.select do |car|
      car.car_owner_instance == self
    end
  end

  def mechanics_that_specific_user_goes_to
    self.list_of_all_cars_owner_has.map do |car|
      car.mechanic_instance
    end
  end

  def self.average_amount_of_cars_for_all_owners
    Car.all.size.to_f / self.all.size
  end

  def self.all 
    @@all
  end

end
