require 'rspec'
require_relative 'vehicle'


describe Vehicle do
  it "should create the Vehicle class" do
    expect { Vehicle.new }.to_not raise_error
  end

  it "should check for model year" do
    my_vehicle = Vehicle.new
    expect(my_vehicle.get_model_year).to be 2016
  end

  it "should change model year" do
    my_vehicle = Vehicle.new
    expect(my_vehicle.change_model_year(1992)).to be 1992
  end

  it "should check for lights on" do
    my_vehicle = Vehicle.new
    expect(my_vehicle.check_lights).to eq "off"
  end

  it "should check if lights are on or off" do
    my_vehicle = Vehicle.new
    expect(my_vehicle.toggle_lights).to eq "on"
  end

  it "should check for new light status" do
    my_vehicle = Vehicle.new
    expect(my_vehicle.check_lights).to eq "off"
    expect(my_vehicle.toggle_lights).to eq "on"
    expect(my_vehicle.check_lights).to eq "on"
  end

end
