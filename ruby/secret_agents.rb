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
encrypt