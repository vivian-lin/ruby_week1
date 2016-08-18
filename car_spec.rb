require 'rspec'
require_relative 'car'

describe Car do
  it "should create the Car class" do
    expect{Car.new}.to_not raise_error
  end

  it "should check that car has 4 wheels" do
    my_car = Car.new
    expect(my_car.get_wheels).to be 4
  end

  it "should check cars turn signal" do
    my_car= Car.new
    expect(my_car.return_turn_signal).to eq "off"
    expect(my_car.change_turn("right")).to eq "right"
    expect(my_car.change_turn("left")).to eq "left"
  end

  it "should check that car accelerates, decelerates, and starts at 0" do
    my_car = Car.new
    expect(my_car.return_speed).to be 0
    expect(my_car.accelerate).to be 10
    expect(my_car.decelerate).to be 8
  end

  it "should check that speed is always >= 0" do
    my_car = Car.new
    expect(my_car.accelerate).to be 10
    6.times{my_car.decelerate}
    expect(my_car.return_speed).to be 0
  end

  it "should check car info" do
    my_car = Car.new
    expect(my_car.return_info).to eq "Wheels: 4, Turn signal: off, Speed: 0, Model Year: 2016, Light status: off"
  end

  it "should check for 2 different cars and their model years" do
    car_collection = 
  end

end
