=begin
def encrypt(password)
  passwordL = password.length - 1
  password.downcase
  password = password.split("")

  i=0
  until i > passwordL
    if password[i] == "z"
      password[i] = "a"
    else password[i] = password[i].next
    end
  i += 1
  end
  p password
end

def decrypt(password)
  password = password.split("")
  unencryptedkey = "abcdefghijklmnopqrstuvwxyz"
  p unencryptedkey
  unenpassword = []
  password.length.times do
    if password[0].downcase == "a"
      unenpassword << "z"
    else keynum = unencryptedkey.index(password[0])
      password[0] = unencryptedkey[keynum]
    end
  end
end

puts "What password"
password = gets.chomp
decrypt(password)
=end
def decrypt(password)
  password = password.split("")
  unencryptedkey = "abcdefghijklmnopqrstuvwxyz"
  p unencryptedkey
  unenpassword = []
  password.length.times do
    if password[0].downcase == "a"
      unenpassword << "z"
    else keynum = unencryptedkey.index(password[0])
      password[0] = unencryptedkey[keynum]
    end
  end
end

#unencryptedkey = "abcdefghijklmnopqrstuvwxyz"


=begin
text = "abz"
p text
textL = text.length - 1
text = text.split("")
p text

i=0
until i > textL
text[i] = text[i].next
i += 1
end
p text
puts text.index("aa")
=end
=begin
def encrypting
  unencrypt = "abcdefghijklmnopqrstuvwxyz"
    p unencrypt
  unencryptL = unencrypt.length - 1
    p unencryptL
  encrypting = unencrypt.split("")
    p encrypting
  encrypted =
  i = 0
  until i > unencryptL
    encrypted[i] = encrypting[i].next
    i += 1
    end
end
=end


=begin
def encrypt
  puts "Please enter your password"
  password = gets.chomp.to_s
  pwlength = password.length - 1
  p pwlength
  passwordarray = password.split("")
  p passwordarray
  i = 0
  until i > pwlength
    if passwordarray[i] = "z"
      pwnecrypt[i] = "a"
    else pwencrypt = passwordarray[i].next
    end
    p pwencrypt
  i += 1
  end
end
=end

=begin
Release 3
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
=end


=begin
Release 4
decrypt(encrypt("The duck flies at midnight"))
=end


=begin
Release 5
puts "Would you like to decrypt or encrypt a password?"
action = gets.chomp
if action == "decrypt"
  puts "Please type in your password"
  password = gets.chomp
  decrypt(password)
elsif action == "encrypt"
  puts "Please type in your password"
  password = gets.chomp
  encrypt(password)
else puts "I didn't unedrstand your request."
=end
=begin
def decrypt(x)
    index = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    while index < x.length
        red = alphabet.index(x)
        blue = red - 1
        yellow = alphabet[blue]
        print yellow
        index += 1
    end
end
=end