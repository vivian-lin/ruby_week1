require_relative 'car'

class Tesla < Car
  def decelerate
    @speed -= 7
  end
end
