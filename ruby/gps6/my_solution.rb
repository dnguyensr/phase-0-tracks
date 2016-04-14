# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
#initialize is taking 3 variables, setting each variable to be able to be used throughout the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Calls for methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    #(@population_density, @population, @state)
    speed_of_spread
    #(@population_density, @state)
  end

private
#Calculates number_of_deaths based on the value of population; Prints string with state and number_of_deaths
  def predicted_deaths
    #(population_density, population, state)
    #predicted deaths is solely based on population density
    #if @population_density >= 200
    #  number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
    #  number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
    #  number_of_deaths = (@population * 0.1).floor
    #else
    #  number_of_deaths = (@population * 0.05).floor
    #end
    #Note: Ceiling and floor calculations based on @population_density was retained and only ranges between 50-200 were refactored
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * (@population_density / 500)).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Calculates speed based on the population_density value and prints a string with new speed value

  def speed_of_spread
  #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    #if @population_density >= 200
    #  speed += 0.5
    #elsif @population_density >= 150
    #  speed += 1
    #elsif @population_density >= 100
    #  speed += 1.5
    #elsif @population_density >= 50
    #  speed += 2
    #else
    #  speed += 2.5
    #end
    #Note: Ceiling and floor calculations based on @population_density was retained and only ranges between 50-200 were refactored
    if @population_density >= 200
      speed = 0.5
    elsif @population_density < 50
      speed = 2.5
    else
      speed = (2.5 - @population_density/100).round(1)
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

def reportmethod
  STATE_DATA.each { |state, popdata|
    report = VirusPredictor.new(state, popdata[:population_density], popdata[:population])
    report.virus_effects
  }
end

reportmethod

#=======================================================================
# Reflection Section
=begin
The two hash syntaxes are the implicit form and the alternative form that uses symbols. An example of the implicit form is the use of the rocket to declare a key-value pair such as the state strings being declared the key to the inner hash. An example of the alternative form is the use of colons in declaring key-value pairs of population_density and population with its respective values.

Require_relative links files with relative paths which enables the content of the linked file to be used globally in the main file. The relative path is what differentiates require_relative from relative.

Iterating through a hash can be done with several iterations of .each including .each, .each_key and .each_value. The methods .each_key and .each_value will have one variable, either the key or the value, while .each will have both variables, the key and the value.

The use of instance variables in virus_effects and not needing to call for them as variables in the methods are what stood out when refactoring virus_effects.

The concept of iterating through hashes was the most solidifying in this challenge. The process of refactoring was also one that saw an improvement in understanding ways to go about refactoring.

=end