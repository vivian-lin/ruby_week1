require 'rspec'
require_relative 'toyota'

describe Toyota do

  it "should create the Toyota class" do
    expect{Toyota.new}.to_not raise_error
  end

  it "should check that Toyota has 4 wheels" do
    my_toyota = Toyota.new
    expect(my_toyota.get_wheels).to be 4
  end

  it "should check if Toyota accelerates by 7" do
    my_toyota = Toyota.new
    expect(my_toyota.accelerate).to be 7
  end

  it "should check Toyota's speed is never < 0" do
    my_toyota = Toyota.new
    my_toyota.accelerate
    3.times{my_toyota.decelerate}
    expect(my_toyota.return_speed).to be 0
  end

  it "should check if Toyota decelerates by 5" do
    my_toyota = Toyota.new
    my_toyota.accelerate
    my_toyota.decelerate
    expect(my_toyota.return_speed).to be 2
  end
end
