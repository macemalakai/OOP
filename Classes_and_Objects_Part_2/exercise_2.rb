class MyCar
  attr_accessor :color
  attr_reader :year

  @@number_of_cars = 0
# defining class methods

  def self.gas_milage(miles, gallons)
    puts "Your car's gas milage is #{miles/gallons} miles per gallon."
  end

  def initialize(year, color, make_and_model)
    @@number_of_cars += 1
    @year = year
    @color = color
    @make_and_model = make_and_model
    @current_speed = 0
  end

  def self.total_number_of_cars
    @@number_of_cars
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

  def to_s
    puts "This car is a #{color}, #{year} #{@make_and_model}."
  end

end

jetta = MyCar.new(1991, "Black", "VW Jetta Carat")
talon = MyCar.new(1990, "Black", "Eagle Talon TSI")
puts MyCar.gas_milage(310, 11)
puts jetta
puts talon