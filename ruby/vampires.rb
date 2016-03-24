puts "What is your name?"
name = gets.chomp.capitalize
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birthyear = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlicbread = gets.chomp.downcase
puts "Would you like to enroll in the company's health insurance?"
healthins = gets.chomp.downcase


if age == (Time.now.year - birthyear) && garlicbread == "yes"
  puts "Probably not a vampire"
elsif age != (Time.now.year - birthyear) && (garlicbread == "no" || healthins == "no")
  puts "Probably a vampire"
elsif age != (Time.now.year - birthyear) && (garlicbread == "no" && healthins == "no")
  puts "Almost certainly a vampire"
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire"
else puts "Results inconclusive"
end