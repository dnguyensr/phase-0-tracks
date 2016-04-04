#split by word
#downcase
#swap first name and last name
#split by letter/char
#change values to next vowel
#change cosonants to next consonant in alphabet
#capitalize
#prompt for name, loop method until "quit"
#store names in array or hash
#print name and alias at end

@aliases = []
p @aliases

def aliascreator(name)
name2 = name.downcase.split(' ').reverse.join(' ')

#p name2

letters = name2.downcase.chars
vowels = ["a", "e", "i", "o", "u", "a"]
num = letters.length - 1

i = 0
until i > num
  if vowels.include? letters[i]
    letters[i] = vowels[vowels.index(letters[i]) + 1]
    end
    i += 1
  end

name2 = letters.join
#p name2

letters = name2.downcase.chars
consonants = %w[ b c d f g h j k l m n p q r s t v w x y z b]
num2 = letters.length - 1

i = 0
until i > num2
  if consonants.include? letters[i]
    letters[i] = consonants[consonants.index(letters[i]) + 1]
    end
    i += 1
  end

letters = letters.join.split(' ').map {|x| x.capitalize}.join(' ')
#p letters
name2 = letters
a = [name2, name]
@aliases << a
end


loop do
  puts "Please enter a first and last name to create an alias"
  name = gets.chomp.to_s
  break if name == "quit"
  aliascreator(name)
end

num3 = 0
num4 = @aliases.length - 1
until num3 > num4
  p "#{@aliases[num3][0]} is actually #{@aliases[num3][1]}."
  num3 += 1
end

#aliascreator("Felicia Torres")