class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, make_and_model)
    @year = year
    @color = color
    @make_and_model = make_and_model
    @current_speed = 0
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

end

jetta = MyCar.new(1991, "Black", "VW Jetta Carat")

jetta.speed_up(20)
jetta.current_speed
jetta.speed_up(20)
jetta.current_speed
jetta.brake(40)
jetta.current_speed
jetta.shut_down
puts jetta.year
jetta.color = "Blue"
puts jetta.color