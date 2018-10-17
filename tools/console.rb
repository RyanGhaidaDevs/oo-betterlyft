require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("Ryan")
driver2 = Driver.new("Jason")
driver3 = Driver.new("Jesus take the wheel")

passenger1 = Passenger.new("tall Ryan student")
passenger2 = Passenger.new("John")
passenger3 = Passenger.new("Spider man")

ride1 = Ride.new(passenger3, driver1, 100.0)
ride2 = Ride.new(passenger2, driver2, 40.2)
ride3 = Ride.new(passenger1, driver3, 1.0)
ride4 = Ride.new(passenger1, driver3, 45.54)
ride5 = Ride.new(passenger2, driver2, 60.232324)
ride6 = Ride.new(passenger3, driver3, 55555774833.2)


passenger1.rides
binding.pry
