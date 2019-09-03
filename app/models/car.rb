class Car

  attr_reader :make, :model, :classification, :car_owner_instance, :mechanic_instance
  @@all = []
  def initialize(make, model, classification, car_owner_instance, mechanic_instance)
    @make = make
    @model = model
    @classification = classification
    @car_owner_instance = car_owner_instance
    @mechanic_instance = mechanic_instance
    @@all << self
  end

  def list_of_mechanics_that_have_expertise_that_matches_car_classification
    # binding.pry
    Mechanic.all.select do |mechanic|
      binding.pry
      mechanic.specialty == self.classification
    end
  end

  def self.list_of_all_car_classifications
    self.all.map do |car|
      car.classification
    end.uniq
  end

  def self.all 
    @@all
  end

end
