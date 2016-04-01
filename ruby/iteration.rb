

#def message
#  yield("first")
#  puts "This is message"
#  yield("third")
#end
#
#message { |nth| puts "This is the #{nth} message."}

#letters = ["a", "b", "c", "d", "e"]
#new_letters = []
#puts "Original data:"
#p letters
#p new_letters
#
#letters.each do |letter|
#  new_letters << letter.next
#end
#
#puts "After .each call:"
#p letters
#p new_letters
#
#numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

#letters = ["a", "b", "c", "d", "e"]
#puts "Original data:"
#p letter
#
#letters.map! do |letter|
#  puts letter
#  letter.next
#end
#puts "After .map call:"
#p letters

array = [1, 2, 5, 20, 100]
array.each { |i|
  array.delete(i) while i < 5
}

#array.map { |i|
#  array.delete(i) if i > 5
#}

p array

