require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger_a = Passenger.new("thea")
passenger_b = Passenger.new("mariah")
driver_a = Driver.new("marc")
driver_b = Driver.new("emma")
driver_c = Driver.new("grant")
ride_a = Ride.new(25, passenger_a, driver_a)
ride_b = Ride.new(35, passenger_a, driver_b)
ride_c = Ride.new(95, passenger_b, driver_b)
ride_d = Ride.new(105, passenger_b, driver_a)
Ride.new(91, passenger_a, driver_c)
Ride.new(91, passenger_b, driver_c)
Pry.start

