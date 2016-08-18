require_relative 'car'

class Tata < Car
  def accelerate
    @speed = @speed + 2
  end

  def decelerate
    @speed = @speed - 1.25
    if @speed < 0
      @speed = 0
    end
  end
end
