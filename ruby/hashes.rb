#prompt and collect for client's name, age, number of children, decor theme
#convert to correct datatype
#push to hash
#print hash at end
#Prompt for update
#skip if 'none'

puts "What is the client's first name?"
first_name = gets.chomp.to_s
puts "What is the client's last name?"
last_name = gets.chomp.to_s
puts "Is the client a first time customer? (yes/no)"
first_visit = gets.chomp.to_s
if first_visit == "yes"
  loyalcust = true
else loyalcust = false
end
puts "What is the client's age?"
age = gets.chomp.to_i
puts "How many children does the client have?"
numchildren = gets.chomp.to_i
puts "What decor theme would you like?"
decor_theme = gets.chomp.to_s

cust_info = {
  first_name: first_name,
  last_name: last_name,
  loyalcust: loyalcust,
  age: age,
  numchildren: numchildren,
  decor_theme: decor_theme
}

puts cust_info

puts "Would you like to edit any information?"
fixhash = gets.chomp
if fixhash == "yes"
  puts "What information would you like to edit?"
  edit = gets.chomp.to_s
    if edit == "first_name"
      puts "What is the client's first name?"
      first_name = gets.chomp.to_s
      cust_info = {first_name: first_name}
    elsif edit == "last_name"
      puts "What is the client's last name?"
      last_name = gets.chomp.to_s
      cust_info = {last_name: last_name}
    elsif edit == "loyalcust"
      puts "Is the client a first time customer? (yes/no)"
      first_visit = gets.chomp.to_s
      if first_visit == "yes"
        loyalcust = true
        cust_info = {loyalcust: loyalcust}
      else loyalcust = false
        cust_info = {loyalcust: loyalcust}
      end
    elsif edit == "age"
      puts "What is the client's age?"
      age = gets.chomp.to_i
      cust_info = {age: age}
    elsif edit == "numchildren"
      puts "How many children does the client have?"
      numchildren = gets.chomp.to_i
      cust_info = {numchildren: numchildren}
    elsif edit == "decor"
      puts "What decor theme would you like?"
      decor_theme = gets.chomp.to_s
      cust_info = {decor_theme: decor_theme}
    end
end
p cust_info
