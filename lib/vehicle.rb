

class Vehicle
  attr_reader :year, 
              :make, 
              :model, 
              :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    adults = [] 
    @passengers.each do |passenger|
      adults << passenger if passenger.adult?
    end
    adults.count
  end
end






























# class Vehicle
#   attr_reader :year, 
#               :make,
#               :model,
#               :passengers
#   def initialize(year, make, model)
#     @year = year
#     @make = make
#     @model = model
#     @speeding = false
#     @passengers = []
#   end

#   def speeding?
#     @speeding
#   end

#   def speed
#     @speeding = true
#   end

#   def add_passenger(passenger)
#     @passengers << passenger
#   end

#   def num_adults
#     require 'pry'; binding.pry
#       @passengers.find_all do |passenger|
#         @passenger.adult?    end

#   end
# end