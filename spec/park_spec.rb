require './lib/vehicle'
require './lib/passenger'
require'./lib/park'

RSpec.describe Park do
  let(:park1) {Park.new("Pretty Place", 10)}
  let(:park2) {Park.new("Wilderness", 8)}
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}
  let(:vehicle2) {Vehicle.new("2020", "Suby", "Outback")}

  let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}
  let(:jude) {Passenger.new({"name" => "Jude", "age" => 20})}

  it 'exists and has attributes' do
    park1 = Park.new("Pretty Place", 10)
    park2 = Park.new("Wilderness", 8)

    expect(park1).to be_an_instance_of(Park)
  end

  it 'starts with no vehicles, but then adds some' do
    expect(park1.vehicles).to eq([])
    park1.add_vehicle(vehicle)
    park1.add_vehicle(vehicle2)
    expect(park1.vehicles).to eq([vehicle, vehicle2])
  end

  it 'can list passengers that enter the park' do
    park1.add_vehicle(vehicle)
    park1.add_vehicle(vehicle2)
    expect(park1.vehicles).to eq([vehicle, vehicle2])

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(taylor)
    vehicle2.add_passenger(jude)
    expect(vehicle.passengers).to match_array([charlie, taylor])
    expect(vehicle2.passengers).to match_array([jude])

    expected = {vehicle => [charlie, taylor], vehicle2 => [jude]}

    expect(park1.list_of_park_passengers).to eq(expected)
  end

  it 'charges admission for adults in park' do
    park1.add_vehicle(vehicle)
    park1.add_vehicle(vehicle2)
    expect(park1.vehicles).to eq([vehicle, vehicle2])

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(taylor)
    vehicle2.add_passenger(jude)
    expect(vehicle.passengers).to match_array([charlie, taylor])
    expect(vehicle2.passengers).to match_array([jude])

    expect(park1.total_admisson).to eq(20)
  end
end