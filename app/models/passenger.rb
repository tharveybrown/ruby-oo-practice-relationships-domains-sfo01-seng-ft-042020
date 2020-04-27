class Passenger
  attr_accessor :name 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end



  def rides 
    Ride.all.select {|ride| ride.passenger == self}
  end

  def total_distance
    rides.map {|ride| ride.distance}.sum
  end

  def self.premium_members
    @@all.select {|passenger| passenger.total_distance > 100}
  end

  def self.all 
    @@all
  end
end