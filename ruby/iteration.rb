

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

array1 = [1, 2, 20, 5, 100]
#array1.delete_if { |i| i < 5 }
#array1.keep_if { |i| i < 5 }
#p array1.select { |i| i <= 20 }
p array1.reject { |i| i < 5 }
p array1

hash1 = {
  first: 1,
  second: 2,
  third: 20,
  fourth: 5,
  fifth: 100
}

#hash1.delete_if { |a,b,| b < 5 }
#hash1.keep_if { |a,b| b < 5 }
#p hash1.select { |a,b| b <= 20 }
p hash1.reject { |a,b| b < 20 }
p hash1
