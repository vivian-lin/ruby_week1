require 'rspec'
require_relative 'tesla'

describe Tesla do
  it "should create the Tesla class" do
    expect{Tesla.new}.to_not raise_error
  end

  it "should check that tesla has 4 wheels" do
    my_tesla = Tesla.new
    expect(my_tesla.get_wheels).to be 4
  end

  it "should check Tesla acceleration" do
    my_tesla = Tesla.new
    expect(my_tesla.accelerate).to be 10
  end

  it "should check tesla speed decelerates by 7" do
    my_tesla = Tesla.new
    my_tesla.accelerate
    my_tesla.decelerate
    expect(my_tesla.return_speed).to be 3
  end
end
