require 'rspec'
require_relative 'car_collection'

describe Car_collection do

  it "should create an empty array called car_collection" do
    my_collection = Car_collection.new
    expect(my_collection.create_collection_array).to eq []
  end

  it "should create two objects with Toyota class" do
    my_collection = Car_collection.new
    expect(my_collection.create_toyotas).to eq @my_toyota2
    # expect(my_collection.toyota_1).to eq my_toyota1
  end

end
