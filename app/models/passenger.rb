class Passenger 
    @@all = [] 

    attr_reader :name 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self 
        end
    end 

    def drivers
        rides.map do |ride|
            ride.driver
        end.uniq 
    end 

    def total_distance
        rides.map do |ride|
            ride.distance
        end.inject(:+)
    end 

    # 1
    def self.premium_members
        Ride.all.select do |ride|
            # [ride1,ride2,ride3...]
            ride.passenger.total_distance > 100
            # --> [ride2,ride3] --> rides >100 mile distance 
        end.map do |ride|
            ride.passenger
        end.uniq
    end 

    # 2 we can utilize same logic as drivers class for total distance 

end

