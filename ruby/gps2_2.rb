# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# container: initialize hash, data: items
# steps:
  # place data into container
  # set default quantity to 0
  # print the list to the console [can you use one of your other methods here?]
# output: hash (key: item; value: qty)

# Method to add an item to a list
# input: item name and optional quantity, hash to add to
# steps: add pair of data to hash key:item, value:qty
# output: hash updated with new item

# Method to remove an item from the list
# input: item, hash to remove from
# steps: delete item from hash
# output: hash updated with item removed

# Method to update the quantity of an item
# input: item, hash it is in, new qty
# steps: change qty to new qty
# output: hash updated with new qty

# Method to print a list and make it look pretty
# input: hash to print
# steps: iterate through the hash for EACH value
# output: context: qty of item on grocery list

#global variables are scurry, spooky scurry variables

def grocerylist(items)
  itemhash = {}
  items.split(" ").each do |items|
    itemhash[items] = 0
  end
  # p itemhash
  return itemhash
end

def additem(itemname, grocerylist, newqty = 0)
  grocerylist[itemname] = newqty
  return grocerylist
end

def removeitem(itemname, grocerylist)
  p grocerylist.length
  grocerylist.delete(itemname)
  return grocerylist
end

def updateqty(itemname, grocerylist, newqty)
  grocerylist[itemname] = newqty
  return grocerylist
end

def printlist(grocerylist)
  grocerylist.each do |item, qty|
    puts "We need #{qty} #{item}."
  end
end

test_list = grocerylist("item1 item2 item3")
p test_list.keys.length == 3
test_list = additem("newitem", test_list)
p test_list
# p test_list["newitem"] == 1
# test_list = removeitem("newitem", test_list)
# p test_list.length

# updateqty("item1", test_list, 2)
# p test_list["item1"] == 2

# printlist(test_list)
#p test_list["newitem"]
#output = function_to_write(input)
#
#p outout.property == something_we_expect
# grocery = grocerylist("lemonade tomato onion ice_cream")
# updateqty("lemonade", grocery, 2)
# updateqty("tomato", grocery, 3)
# updateqty("onion", grocery, 1)
# updateqty("ice_cream", grocery, 4)
# removeitem("lemonade", grocery)
# printlist(grocery)

=begin
What did you learn about pseudocode from working on this challenge?

I learned to effectively use pseudocode to outline what needed to coded. This included the inputs to collect, the steps to do what needs to be one, and the output to be expected.

What are the tradeoffs of using arrays and hashes for this challenge?
This challenge only needed to change the quantity value so hashes were a good fit for it. Hashes benefit from being able to use a single built-in hash method to delete a key while hashes would require an additional of finding the index number. Assuming arrays within arrays were used, multiple entries of the same item would be able to be placed into the list while hashes would allow only one of the item due to items being used as the key.

What does a method return?

A method returns the last statement in the method.

What kind of things can you pass into methods as arguments?

Some things that can be passed into a method as arguments include strings, integers, floats, booleans, and variables with or without default values.

How can you pass information between methods?

Information can be passed through methods by using a variable or storing it in a container.

What concepts were solidified in this challenge, and what concepts are still confusing?

My understanding of hashes was fairly poor prior to this GPS but I felt like I learned a few things by going through this GPS. One of the notable things was learning to return hashes after the change is done. I will have to look over additional resources to get a stronger grasp of hashes.
Setting test drivers prior to coding for a method was also new to me as it had normally stopped at the pseudocoding phase and placed in after the method is complete to test it prior to this GPS.


=end