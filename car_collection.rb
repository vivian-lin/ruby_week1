require_relative 'toyota'
require_relative 'tata'
require_relative 'tesla'

class Car_collection

  def create_collection_array
    @car_collection = []
  end

  def create_toyotas
    @my_toyota1 = Toyota.new#(1991)
    @my_toyota2 = Toyota.new(2016)
  end

  def toyota_1
    @my_toyota1
  end

  def create_teslas
    @my_tesla1 = Tesla.new#(1992)
    @my_tesla2 = Tesla.new#(1800)
  end

  def tesla_1
    @my_tesla1
  end

  def create_tatas
    @my_tata1 = Tata.new#(1996)
    @my_tata2 = Tata.new#(2001)
  end

  def tata_1
    @my_tata1
  end

  def push_to_car_collection
    @car_collection.push(@my_toyota1, @my_toyota2, @my_tesla1, @my_tesla2, @my_tata1, @my_tata2)
  end

end
