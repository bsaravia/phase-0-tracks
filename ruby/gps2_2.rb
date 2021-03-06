#GPS 2.2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split user input into separate values and use as keys for hash
  # set default quantity to one
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: Ask user for item 
# output: enter item into hash

# Method to remove an item from the list
# input: ask user for an item to remove, print all keys?
# steps: use user input to delete key from hash
# output: new hash with item deleted

# Method to update the quantity of an item
# input: new value for quantity
# steps: update value for specific key (item)
# output: update hash 



#Driver Code

items = "carrots apples cereal pizza"

#Add each item as a key to a hash
def create_list(string)
  
  #Create array of items
  item_array = string.split(" ")
  shopping_list = {}
  
  item_array.each do |item|

  #default value of 1 for quantity
  shopping_list[item] = 1

  end
  
  return shopping_list
end

 list_hash = create_list(items)

def add_or_update_item(list_hash, item_name, quantity)
    
    list_hash[item_name] = quantity
  
    return list_hash
end

def remove_item(list_hash, item_name)
  
  list_hash.delete(item_name)
  return list_hash
    
end

#Removing this method because it is the same as add_item

# def update_quantity(hash, item_name, quantity)
  
#   hash[item_name] = quantity
#   return hash    
# end

# p add_item(list_hash,"doritos", 3)

# p remove_item(list_hash, "pizza")

# p update_quantity(list_hash, "doritos", 5)

# Method to print a list and make it look pretty
# input: hash with lists and quantity of item
# steps: a .each method with block to print key and value
# output: a string with each key and value pair ie "Carrots quantity: 5"
# Method to print all names in the hash

def list_printer(list_hash)
  puts "**************SHOPPING LIST******************"
  list_hash.each do |items, quantity|
    
    puts "#{items}, qty: #{quantity}"
   end
end

# list_printer(list_hash)

release3 = create_list("Lemonade Tomatoes Onions Ice-Cream")

list_printer(release3)
add_or_update_item(release3, "Lemonade", 2)
add_or_update_item(release3, "Tomatoes", 3)
add_or_update_item(release3, "Ice-Cream", 4)
list_printer(release3)

remove_item(release3, "Lemonade")
list_printer(release3)

add_or_update_item(release3, "Ice-Cream", 1)
list_printer(release3)

# Release 5: Reflect
# What did you learn about pseudocode from working on this challenge?
#   - I learned that it is actually very important for interviews and therefore shouldn't be ignored
# What are the tradeoffs of using arrays and hashes for this challenge?
#   - We used a hash so it's hard to compare definitively but a hash allows you to set the quantity of each items much easier. Arrays on the other hand are very easy to cycle through.
# What does a method return?
#   - It returns the value of its last expression 
# What kind of things can you pass into methods as arguments?
#   - You can pass pretty much all the different classes (arrays, strings, etc) as well as things that evaluate to those such as another method that returns a string, for example
# How can you pass information between methods?
#   - You can make a global variable, use nested methods, or use a separate variable to pull info from one method and feed it to another 
# What concepts were solidified in this challenge, and what concepts are still confusing?
#   - Learned more about how to pass information among methods but still haven't really gotten good at knowing when to use global variables