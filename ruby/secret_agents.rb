def encrypt(password)
  passwordL = password.length - 1
  password = password.downcase
  password = password.split("")
  i=0
  until i > passwordL
    if password[i] == "z"
      password[i] = "a"
    elsif password[i] == " "
      password[i] = " "
    else password[i] = password[i].next
    end
  i += 1
  end
  password.join
end

def decrypt(password)
  unencryptedkey = "abcdefghijklmnopqrstuvwxyz !"
  string = []
  password = password.downcase
  password = password.split("")
  i = 0
  until i > password.length - 1
    if password[i] == "a"
      password[i] = "z"
    elsif password[i] == " "
      password[i] = " "
    else
      pwindex = password[i]
      keynum = unencryptedkey.index(pwindex) - 1
      password[i] = unencryptedkey[keynum]
    end
    i += 1
  end
  password.join
end

=begin
p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")

p decrypt(encrypt("The duck flies at midnight"))

The nested method call works because it solves from the innermost nest and goes outwards. If the data types for the method coincides with each consecutive method, the nested methods should execute properly.
=end

puts "Would you like to decrypt or encrypt a password?"
action = gets.chomp
if action == "decrypt"
  puts "Please type in your password (letters and spaces only)"
  password = gets.chomp
  decrypt(password)
elsif action == "encrypt"
  puts "Please type in your password"
  password = gets.chomp
  encrypt(password)
else puts "I didn't understand your request."
end