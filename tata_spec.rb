require 'rspec'
require_relative 'tata'

describe Tata do
  it "should create the Tata class" do
    expect{Tata.new}.to_not raise_error
  end

  it "should check that the Tata has 4 wheels" do
    my_tata = Tata.new
    expect(my_tata.get_wheels).to be 4
  end

  it "should accelerate Tata by 2" do
    my_tata = Tata.new
    expect(my_tata.accelerate).to be 2
  end

  it "should decelerate Tata by 1.25" do
    my_tata = Tata.new
    my_tata.accelerate
    my_tata.decelerate
    expect(my_tata.return_speed).to be 0.75
  end

  it "should never decelerate speed below zero" do
    my_tata = Tata.new
    my_tata.accelerate
    2.times{my_tata.decelerate}
    expect(my_tata.return_speed).to be >= 0
  end
end
