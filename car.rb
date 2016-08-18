require_relative 'vehicle'

class Car < Vehicle

  def initialize
    super
    @wheels = 4
    @turn_signal = "off"
    @speed = 0
  end

  def get_wheels
    @wheels
  end

  def return_turn_signal
    @turn_signal
  end

  def change_turn(x)
    p "You are turning " + x
    @turn_signal = x
  end

  def return_speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
  end

  def decelerate
    if @speed >= 2
      @speed = @speed - 2
    end
  end

  def return_info
    "Wheels: " + @wheels.to_s + ", Turn signal: " + @turn_signal + ", Speed: " + @speed.to_s + super
  end
end
