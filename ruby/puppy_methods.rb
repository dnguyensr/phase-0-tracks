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

    puts "The puppy is #{years} dog years ld"
  end

  def dress(clothes)
    puts "The puppy is wearing #{clothes}."
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

spot = Puppy.new
spot.fetch("bone")
spot.speak(2)
spot.roll_over
spot.dog_years(2.5)
spot.dress("a hat")


class Students

  def initialize
    puts "Initializing a new student instance..."
  end

  def student_condition(condition)

    if condition == "frustrated"
        puts "Pull out hair!"
    elsif
      condition == "confused"
        puts "Scratch head???"
    elsif
      condition == "tired"
        puts "Take a break"
    elsif
      condition == "passed test"
        puts "Jump for joy!"
    else
        puts "Keep working."
    end
  end

  def chalkboard_write(number, message)
    number.times do puts "Written on the chalkboard: #{message}."
      end
  end

end

class_report = []
class_number = 1

while class_number < 51

  student_id = "student" + class_number.to_s
  student_id = Students.new
  class_report.push(student_id)

  class_number += 1

end

#p class_report[0].class
#p class_report2

class_report.each do |x|
  #p x.class
  x.student_condition("frustrated")
  x.chalkboard_write(2, "Must Study")
end

#p class_report[0].class

  # dave = Students.new
  # dave.student_condition("frustrated")
  # dave.chalkboard_write(5, "2 + 2 = 4")
