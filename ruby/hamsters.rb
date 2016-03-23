puts "What is your hamster's name?"
hamster_name = gets.chomp

puts "What is the volume level of your hamster? (1-10)"
volume = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (yes/no)"
good_candidate = gets.chomp

puts "What is the estimated age?"
age = gets.chomp

 if age == ""
  age = "unknown"
else
  age = age.to_i
end

puts "Your hamster's name is #{hamster_name}."
puts "Your hamster's volume is #{volume} out of 10."
puts "Your hamster's fur color is #{fur_color}."
puts "You replied #{good_candidate} for whether he/she is a good candidate for adoption."
puts "He/she is #{age}."