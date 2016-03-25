puts "How many employees will be processed?"
numemployees = gets.chomp.to_i
i = 0
while i < numemployees do
  puts "What is your name?"
  name = gets.chomp.downcase
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birthyear = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlicbread = gets.chomp.downcase
  puts "Would you like to enroll in the company's health insurance?"
  healthins = gets.chomp.downcase
  allergies = "none"
  until allergies == "sunshine" || allergies == "done"
    puts "What allergies do you have? (type \"done\" when finished)"
      allergies = gets.chomp.downcase
  end

  if name == "draka cula" || name == "tu fang"
    puts "Definitely a vampire"
  elsif age != (Time.now.year - birthyear) && ( garlicbread == "no" && healthins == "no")
    puts "Almost certainly a vampire"
  elsif (age != (Time.now.year - birthyear) && ( garlicbread == "no" || healthins == "no")) || allergies == "sunshine"
    puts "Probably a vampire"
  elsif (age == (Time.now.year - birthyear) && garlicbread == "yes")
    puts "Probably not a vampire"
  else puts "Results inconclusive"
  end
  i += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."