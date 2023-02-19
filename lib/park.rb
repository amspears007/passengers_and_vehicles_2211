class Park
  attr_reader :name, 
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_of_park_passengers
    park_hash = {}
    @vehicles.each do |vehicle|
      park_hash[vehicle] = vehicle.passengers
    end
    park_hash
  end

  def total_admisson
    adults = @vehicles.map do |vehicle|
      vehicle.passengers.select do |passenger|
        passenger.age >= 18
      end
    end
    adults.count * @admission_price
  end
end