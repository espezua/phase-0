# Virus Predictor

# I worked on this challenge with Regina Wong.
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative
# loads a relative file using a relative path
# so the data can be used by the class VirusPredictor
# it returns LoadError if the file's path cannot be determined

# require loads a file and returns true/false if the
# file has already been loaded
=begin
#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

What is going on with this hash? What does it have in it?
It's a hash with keys and each key's value is a hash
The key's values are a hash with the keys population_density and population.
The initial hash's keys use the hash rocket and the nested hashes use symbols.

What kind of variable is STATE_DATA, and what's its scope?
It's a constant and has a global scope.

What is the purpose of "private"? What happens if you move it above virus_effects?
When would you want to use this method?
The private method ensures that the returned result only stays within the class and
the method cannot be called with explicitly outside the class. If you move it above
virus_effects, virus_effects won't be able to access it and the method wouldn't run.
You use "private" when you don't someone to have direct access to particular methods.


Initial Solution
require_relative 'state_data'

class VirusPredictor

  #initializes the instance variables state_of_origin as @state,
  # population_density as @population_density, & population as @population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #uses the method predicted_deaths with the instance variables
  # @population_density, @population, @state as the parameters
  #& uses the speed_of_spread with the instance variables
  # @population_density, @state as the parameters
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  #calculates the predicted deaths for a state using
  # the population_density, population, & state values
  # prints a message with the state's name & the number of deaths
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #uses the values for population_density & state
  #to calculate how quickly the virus will spread
  #prints a message about how quickly the virus spreads within months
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

def report(states)
  states.each do | state, value |
    #     VirusPredictor.new("Alabama", STATE_DATA["Alabama"][{population_density: 94.65, population: 4822023}])
    VirusPredictor.new(state, states[state][:population_density], states[state][:population]).virus_effects
  end
end
=end

#Refactored Solution
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    puts "#{@state} will lose #{predicted_deaths } people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  end

  def speed_of_spread #in months
    if  @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end


#=======================================================================

# DRIVER CODE

# initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Does this belong inside the class or outside of it? Why?
# It belongs outside the class because we are  creating an instance of this class for each
#state. We will be using the instances outside of this method to create a report.
def report(states)
  states.each do | state, data |
    VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
  end
end


report(STATE_DATA)

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The first hash's keys are strings with the syntax '"key" => value' and the second hash's keys
are symbols with the syntax 'key: value'.


What does require_relative do? How is it different from require?
The require_relative method loads a relative file using a relative path
in the current ruby file, so the imported data can be used.
If the file's path cannot be determined it returns LoadError.

The require method loads a file and returns true/false if the
file has already been loaded.


What are some ways to iterate through a hash?
You can iterate through a hash using:
#each: hash.each {|k,v| block}
#each_key: hash.each_key {|k| block}
#each_pair: hash.each_pair {|k,v| block}
#each_value: hash.each_value {|v| block}


When refactoring virus_effects, what stood out to you about the variables, if anything?
When refactoring the virus_effects method we realized the predicted_deaths and speed_of_spread
didn't need to use the instance variables.  Instead we put the messages that the methods were
returning originally into the virus effect method and used string interpolation for
the values returned from the predicted_deaths & speed_of_spread methods.


What concept did you most solidify in this challenge?
This challenge helped to solidify/reinforce the concept of iterating through a hash
to access values in nested data structures.

=end
