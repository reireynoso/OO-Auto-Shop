class Mechanic

  attr_reader :name, :specialty
  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def list_of_cars_this_mechanic_services
  Car.all.select do |car|
    car.mechanic_instance == self
  end
end

def list_of_all_car_owners_that_go_to_specific
  self.list_of_cars_this_mechanic_services.map do |car|
    car.car_owner_instance
  end
end

def list_of_names
  self.list_of_all_car_owners_that_go_to_specific.map do |car_owner|
    car_owner.name
  end
end

def self.all
  @@all
end

end
