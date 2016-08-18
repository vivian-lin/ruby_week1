require_relative 'car'

class Toyota < Car
  def accelerate
    @speed = @speed + 7
  end

  def decelerate
    @speed = @speed - 5
    if @speed < 0
      @speed = 0
    end
    
  end
end
