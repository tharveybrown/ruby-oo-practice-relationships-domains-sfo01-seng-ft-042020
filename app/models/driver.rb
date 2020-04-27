class Driver

  attr_accessor :name 
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def rides 
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger}
  end

  def self.mileage_cap(distance)
    longer_rides = Ride.all.select {|ride| ride.distance > distance}
    longer_rides.map {|ride| ride.driver}.uniq
  end
  

  def self.all 
    @@all
  end
end