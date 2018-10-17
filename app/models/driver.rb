class Driver

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
        ride.driver == self 
    end
end

def passenger_names
    # rides --> [ride1, ride3] have the same driver 
    rides.map{|ride| ride.passenger.name}.uniq
end


# helper method for total distance 

def total_distance
    rides.map do |ride|
        ride.distance
    end.inject(:+)
end 

def self.mileage_cap(distance)

    @@all.select do |driver|
        driver.total_distance > distance
    end 

end



end

