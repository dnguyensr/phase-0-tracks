class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(time)
    time.to_i
    time.times do puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(years)
    years.to_f
      if years < 2
        years = years * 10
      else years = years * 4 + 20
      end
    puts "The puppy is #{years} dog years old"
  end

  def dress(clothes)
    puts "The puppy is wearing #{clothes}."
  end

end

spot = Puppy.new
spot.fetch("bone")
spot.speak(2)
spot.roll_over
spot.dog_years(2.5)
spot.dress("a hat")