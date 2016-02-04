module Plowable
  def plow
    puts "I can be used to clear the way in a blizzard!"
  end
end
class Vehicle
  attr_accessor :year
  attr_accessor :color
  @@number_of_vehicles = 0

  def initialize(year, color, make_and_model)
    @year = year
    @color = color
    @make_and_model = make_and_model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def how_many_vehicles
    if @@number_of_vehicles == 1
      puts "There is #{@@number_of_vehicles} vehicle up in here."
    else
      puts "There are #{@@number_of_vehicles} vehicles up in here!"
    end
  end

  def speed_up(mph)
    @current_speed += mph
    puts "You're speeding up... Big-time."
  end

  def brake(mph)
    @current_speed -= mph
    puts "Aaanndd you're slowing down."
  end

  def shut_down
    puts "You're no longer moving. It's time to shut her down."
  end

  def current_speed
    puts "You're now going #{@current_speed}mph."
  end

  def spray_paint(color)
    self.color = color
  end
end

#subclasses below

class MyCar < Vehicle
  DRIVE_TRAIN = "RWD"
end

class MyTruck < Vehicle
  include Plowable
  DRIVE_TRAIN = "4WD"
end

jetta = MyCar.new(1991, "Black", "VW Jetta Carat")
ridgeline = MyTruck.new(2009, "Blue", "Honda Ridgeline")
puts jetta.year
jetta.spray_paint("Red")
puts jetta.color
puts jetta.speed_up(25)
puts jetta.current_speed
puts ridgeline.how_many_vehicles
puts ridgeline.plow