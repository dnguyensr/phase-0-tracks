class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    puts "Initializing Santa instance..."
  end
def new_age(new_age)
  @age = new_age
end
#  def gender
#    @gender
#  end
#
#  def ethnicity
#    @ethnicity
#  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookietype)
    puts "That was a good #{cookietype}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    num = @reindeer.index(reindeer_name)
    @reindeer.delete_at(num)
    @reindeer.push(reindeer_name)
    p @reindeer
  end
end

clause = Santa.new("male", "Northpolean", 500)
#clause.speak
#clause.eat_milk_and_cookies("oatmeal cookie")

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (#unicorn)")
#santas << Santa.new("N/A", "N/A")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities#[i])
#end

#p clause.celebrate_birthday
#clause.get_mad_at("Vixen")
#puts "Clause is a #{clause.gender} #{clause.ethnicity} santa."

50.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(140))
end
p santas
#p clause