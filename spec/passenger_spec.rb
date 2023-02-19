require './lib/passenger'


RSpec.describe Passenger do
  let(:charlie) {Passenger.new({"name" => "Charlie", "age" => 18})}
  let(:taylor) {Passenger.new({"name" => "Taylor", "age" => 12})}

  it 'exists and has a name and age' do
    # charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    # taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_an_instance_of(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 'checks if adults' do
    # charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    # taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'starts not being able to drive, but then can become a driver' do
    # charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    # taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.driver?).to eq(false)
    charlie.drive
    expect(charlie.driver?).to eq(true)
  end
end

  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  #   it 'exists' do
#     expect(charlie).to be_an_instance_of(Passenger) 
#   end

#   it 'has attributes' do
#     charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
#     taylor = Passenger.new({"name" => "Taylor", "age" => 12})

#     expect(charlie.name).to eq ("Charlie")
#     expect(charlie.age).to eq (18)
#     expect(charlie.adult?).to eq(true)
#     expect(taylor.adult?).to eq(false)
#   end

#   it 'cannot drive by default' do
#     charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
#     taylor = Passenger.new({"name" => "Taylor", "age" => 12})

#     expect(charlie.driver?).to eq(false)
#   end

#   it 'can drive' do
#     charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
#     taylor = Passenger.new({"name" => "Taylor", "age" => 12})
#     charlie.drive

#     expect(charlie.drive).to eq(true)
#   end
# end

