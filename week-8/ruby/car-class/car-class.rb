# Create a Car Class from User Stories
=begin
As a video game player, I want to be able to create a new car and set its model
and color so I can customize it in the video game.

As a video game player, I need to be able to define a distance to drive so I
can follow directions appropriately.

As a video game player, I'd like to be able to see the speed I am traveling,
so I can properly accelerate or decelerate.

As a video game player, I want to be able to turn left or right so I can
navigate a city and follow directions.

As a video game player, I want to be able to accelerate and decelerate the
car to a defined speed so I can drive following the rules of the road.

As a video game player, I want to keep track of the total distance I have
travelled, so I can get paid for mileage.

As a video game player, I want to be able to stop the car so I can follow
traffic signs and signals.

As a video game player, I would like to see output reflecting the latest
action of my car so I can see a play-by-play of the pizza delivery.
=end
# I worked on this challenge by myself.


# 2. Pseudocode

=begin
CREATE a car class
  DEF initialize
    INIT a variable for the model
    INIT a variable for the color
    INIT a variable for the total distance
    INIT a variable for the pizza deliveries
  END
  DEF a method for driving
    SET the distance variable
    SET the speed speed variable
    SET the direction variable to straight
  END
  DEF a method for changing the speed
    UPDATE the speed variable
  END

  DEF a method to turn the car
    IF the direction is left
      SET the direction variable to 'turning left, then straight'
    ELSIF the direction is right
      SET the direction variable to 'turning right, then straight'
    END
  END

  DEF a method for the total distance
    UPDATE the total distance with the distance variable
  END
  DEF a method to stop the car
    UPDATE the speed variable
  END
  DEF a method for rolling a die
    return the first item in the list after it's rearranged
  END

  DEF a method for the car to take a pizza_order
    ADD the pizza order the deliveries variable
  END

  DEF a method for the pizza delivery
    REMOMVE the first item from the deliveries variable
  END

  DEF a method to the info about the car
    PRINT the car's model
    PRINT the car's color
    PRINT the car's speed
    PRINT the direction the car is driving
    PRINT the distance for the part of the trip it is driving
    PRINT the total distance
  END
END

CREATE a pizza class
  SET the kind & size variable so they can be read
  DEF initialize
    INIT a kind variable
    INIT a size variable
  END
END
=end


# 3. Initial Solution
class Car
  attr_accessor :model, :color
  attr_reader :speed, :deliveries, :distance, :direction, :total_distance

  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0
    @deliveries = []
  end

  def drive(distance, speed)
    @distance = distance
    @speed = speed
    @direction = "straight"
    @total_distance += @distance
  end

  def turn(direction)
    if direction == 'left'
      @direction = 'turning left, then straight'
    elsif direction == 'right'
      @direction = 'turning right, then straight'
    end
  end

  def change_speed(new_speed)
    @speed = new_speed
  end

  def stop
    @speed = 0
  end

  def pizza_order(kind, size)
    @deliveries <<  Pizza.new(kind, size)
  end

  def pizza_delivery
    @deliveries.shift
  end

  def print_info
    puts "\nCar's model: #{@model}"
    puts "\nCar's color: #{@color}"
    puts "\nCar's speed: #{@speed}mph"
    puts "\nCar's direction: #{@direction}"
    puts "\nCurrent distance: #{@distance}"
    puts "\nTotal distance: #{@total_distance}"
    puts "\nPizza's to deliver: #{@deliveries}"
  end

end

class Pizza
  attr_accessor :kind, :size

  def initialize(kind, size)
    @kind = kind
    @size = size
  end
end


car1 = Car.new("Ford Focus", "black")
car1.pizza_order("cheese", "large")
car1.pizza_order("pepperoni", "large")
p car1.deliveries
p car1.model
p car1.color
p car1.print_info
car1.color = "blue"
p car1.drive(0.5, 30)
p car1.print_info
p car1.stop
p car1.turn("right")
p car1.print_info
p car1.drive(2, 50)
p car1.pizza_delivery
p car1.speed
p car1.change_speed(15)
p car1.stop
p car1.turn("left")
p car1.print_info
p car1.drive(1.5, 35)
p car1.print_info
p car1.stop
p car1.total_distance
p car1.print_info
