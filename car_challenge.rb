# Story: As a programmer, I can make a vehicle.
# Challenge: Create a class called Vehicle, and create an object called my_vehicle which is of class Vehicle.
class Vehicle
end
my_vehicle = Vehicle.new

# Story: As a programmer, I can make a car.
# Challenge: Create a class called Car, and create an object called my_car which is of class Car.
class Car
end
my_car = Car.new

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Challenge: Initialize the car to have four wheels, then create a method to return the number of wheels.
class Car
  def initialize()
    @wheels = 4
  end

  def wheels()
    @wheels
  end
end

# Story: As a programmer, I can make a Tesla car.
# Challenge: Create an object called my_tesla which is of class Tesla which inherits from class Car .
class Tesla < Car
end
my_tesla = Tesla.new

# Story: As a programmer, I can make a Tata car.
# Challenge: Create an object called my_tata which is of class Tata.
class Tata < Car
end
my_tata = Tata.new

# Story: As a programmer, I can make a Toyota car.
# Challenge: Create an object called my_toyota which is of class Toyota.
class Toyota < Car
end
my_toyota = Toyota.new

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Challenge: Make model year part of the initialization.
class Vehicle
  def initialize
    @model_year
  end
end

# Story: As a programmer, I can turn on and off the lights on a given vehicle.
# Challenge: Create method(s) to allow programmer to turn lights on and off.
class Vehicle
  def toggle_lights
    if @lights_on==false
      @lights_on = true
    else
      @lights_on = false
    end
  end
end
vehicle = Vehicle.new
vehicle.toggle_lights

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
class Vehicle
  def initialize
    @lights_on = false
  end

  def toggle_lights
    if @lights_on==false
      @lights_on = true
      p "Lights are now on"
    else
      @lights_on = false
      p "Lights are now off"
    end
  end
end

# Story: As a programmer, I can signal left and right. Turn signals starts off.
class Car
  def initialize
    @turn_signal = "off"
  end

  def notify_turn (x)
    if x=="right"
      @turn_signal = x
      p "You are turning right"
    end
    if x=="left"
      @turn_signal = x
      p "You are turning left"
    end
  end

  def return_turn_signal
    @turn_signal
  end
end

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
class Car
  def initialize()
    @speed = 0
  end

  def return_speed()
    @speed
  end
end
my_car = Car.new

# Story: As a programmer, I can speed a car up.
class Car
  def initialize()
    @speed = 0
  end

  def return_speed()
    @speed
  end

  def accelerate()
    @speed += 5
  end
end
my_car = Car.new

# Story: As a programmer, I can slow a car down to zero.
class Car
  def initialize()
    @speed = 0
  end

  def return_speed()
    @speed
  end

  def accelerate()
    @speed += 10
  end

  def decelerate()
    if @speed>0
      @speed -= 3
    end
  end
end
my_car = Car.new

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
class Tesla < Car
end
my_tesla = Tesla.new

# Story: As a programmer, I can slow my Teslas down by 7 per braking.
class Tesla < Car
  def decelerate()
    if @speed>0
      @speed -= 7
    end
  end
end
my_tesla = Tesla.new
my_tesla.accelerate
my_tesla.decelerate

# Story: As a programmer, I can speed my Tatas up by 2 per acceleration.
class Tata < Car
  def accelerate
    @speed += 2
  end
end
my_tata = Tata.new

# Story: As a programmer, I can slow my Tatas down by 1.25 per braking.
class Tata < Car
  def accelerate
    @speed += 2
  end
  def decelerate
    if @speed>1.25
      @speed -= 1.25
    else
      @speed = 0
    end
  end
end

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
class Toyota < Car
  def accelerate
    @speed += 7
  end
end
my_toyota = Toyota.new

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
class Toyota < Car
  def accelerate
    @speed += 7
  end

  def decelerate
    @speed -= 5
  end
end
my_toyota = Toyota.new

# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Challenge: Create two of each vehicles, all from different model years, and put them into an Array.
class Vehicle
  def initialize(x)
    @model_year = x
  end

  def reveal_myear
    @model_year
  end
end

class Tata < Vehicle
end

class Toyota < Vehicle
end

class Tesla < Vehicle
end

car_collection = []

my_tata1 = Tata.new(1990)
my_tata2 = Tata.new(1997)
my_toyota1 = Toyota.new(2016)
my_toyota2 = Toyota.new(2001)
my_tesla1 = Tesla.new(2000)
my_tesla2 = Tesla.new(1992)

car_collection.push(my_tata1, my_tata2, my_toyota1, my_toyota2, my_tesla1, my_tesla2)

# Story: As a programmer, I can sort my collection of cars based on model year.
car_collection.sort {
  |x,y| x.reveal_myear <=> y.reveal_myear
}

# Story: As a programmer, I can sort my collection of cars based on model.
# Challenge: Sort based on class name.
class Vehicle
  def initialize(x)
    @model = x
  end

  def reveal_model
    @model
  end
end

class Tata < Vehicle
end

class Toyota < Vehicle
end

class Tesla < Vehicle
end

car_collection = []

my_tata1 = Tata.new("Bat")
my_tata2 = Tata.new("Cat")
my_toyota1 = Toyota.new("Dog")
my_toyota2 = Toyota.new("Hog")
my_tesla1 = Tesla.new("Zog")
my_tesla2 = Tesla.new("Hug")

car_collection.push(my_tata1, my_tata2, my_toyota1, my_toyota2, my_tesla1, my_tesla2)

car_collection.sort do
  |x,y| x.reveal_model <=> y.reveal_model
end

# Story: As a programmer, I can sort my collection of cars based on model and then year.
class Vehicle
  def initialize(x)
    @model_year = x
  end

  def reveal_myear
    @model_year
  end
end

class Tata < Vehicle
end

class Toyota < Vehicle
end

class Tesla < Vehicle
end

car_collection = []

my_tata1 = Tata.new(1990)
my_tata2 = Tata.new(1997)
my_toyota1 = Toyota.new(2016)
my_toyota2 = Toyota.new(2001)
my_tesla1 = Tesla.new(2000)
my_tesla2 = Tesla.new(1992)

car_collection.push(my_toyota2, my_tata1, my_tesla2, my_tata2, my_toyota1, my_tesla1)

car_collection.sort do
  |x,y| [x.class.to_s, x.reveal_myear] <=> [y.class.to_s, y.reveal_myear]
end

#purpose: create a function that compares two vehicles by model and then year
#signature: (Vehicle, Vehicle) -> integer (i.e. -1, 0, 1)
#examples: compareVehicles(my_tata1, my_tata2) -> -1
#          compareVehicles(my_toyota1, my_tesla1) -> 1
#          compareVehicles(my_tesla1, my_tata2) -> 1
def compareVehicles(car1, car2)
  if car1.class.to_s == car2.class.to_s
    car1.reveal_myear <=> car2.reveal_myear
  else
    car1.class.to_s <=> car2.class.to_s
  end
end

car_collection.sort do
  |x,y| compareVehicles(x,y)
end
