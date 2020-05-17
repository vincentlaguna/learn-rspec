# Creating Classes, Instantiating Objects

=begin class Spaceship
  def launch(destination)
    @destination = destination
    #go towards dest
  end
end

ship = Spaceship.new
ship.launch("Earth")
p ship #shorthand for ship.inspect 
=end

=begin
class Spaceship
  attr_accessor :destination
end
ship = Spaceship.new
ship.destination = "Earth"
puts ship.destination
p ship #same result as previous code
=end

=begin
class Spaceship
  attr_accessor :destination
  attr_reader :name #"getters" and
  attr_writer :name #"setters"
end

ship = Spaceship.new
ship.name = "Dreadnoght"
puts ship.name
=end

=begin
class Spaceship
  attr_accessor :destination, :name #multiple
  
  def cancel_launch
    destination = "" #creates local variable (and raises warning)
    self.destination = "" #makes it clear to ruby you want to access
                          #the attr_accessor
  end
end
=end

=begin
class Spaceship
  def destination
    @autopilot.destination #passes the destination value to @autopilot
  end                      #instead of storing it

  def destination=(new_destination)
    @autopilot.destination = new_destination
  end
end     
   
ship = Spaceship.new
ship.destination = "Earth"
puts ship.destination #undefined method error
=end

# Initialization

=begin
class Spaceship
  def initialize(name, cargo_module_count)
    @name = name
    @cargo_hold = CargoHold.new(cargo_module_count)
    @power_level = 100
  end
end

ship = Spaceship.new("Dreadnought", 4)
p ship
=end

# Example of a module

module Circle
  
  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end

# Inheritance


