class Ride 
  attr_accessor :distance, :driver, :passenger
  @@all = []
  def initialize(distance, passenger = nil, driver = nil)
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@all << self
  end

  def self.average_distance
    @@all.map {|ride| ride.distance}.sum / @@all.size.to_f
  end
  def self.all
    @@all 
  end

end