class Ride 

    attr_accessor :passenger, :driver, :distance 

    @@all = [] 
    
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        self.class.all << self 
        # same as @@all << self 
    end 

    def self.all
        @@all
    end 

    def self.average_distance
        dist = 0 
        @@all.each do |ride|
            dist += ride.distance
        end 
        dist/(@@all.length).to_f
    end 

end 
