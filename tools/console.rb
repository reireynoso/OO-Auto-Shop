require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

taylor = CarOwner.new("Taylor")
alex = CarOwner.new("Alex")
yuki = CarOwner.new("Yuki")

gabriel = Mechanic.new("Gabriel", "Clunkers")
nick = Mechanic.new("Nick", "Antiques")
tawhid = Mechanic.new("Tawhid", "Exotic")

Car.new("Tesla", "Model3", "Exotic", alex, tawhid)
Car.new("Honda", "Civic", "Clunkers", taylor, gabriel)
Car.new("Ford", "Mustang", "Antique", yuki, nick)

binding.pry
0