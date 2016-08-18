class Vehicle

  def initialize(x)
    @model_year = x
    @lights = "off"
  end

  def get_model_year
    @model_year
  end

  def change_model_year(x)
    @model_year = x
  end

  def check_lights
    @lights
  end

  def toggle_lights
    if @lights == "off"
      @lights = "on"
    else
      @lights = "off"
    end
  end

  def return_info
    ", Model Year: " + @model_year.to_s + ", Light status: " + @lights
  end
end
