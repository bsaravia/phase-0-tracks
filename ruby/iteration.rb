# #Write a method that takes a block
 def practice_method
   puts "Welcome to California!"
   yield("San Diego", "San Francisco")
 end

# #Call method for practice
 practice_method { |city1, city2| puts "These are cities in California, #{city1} and #{city2}." }


array = [0,5,10,15,20,25]
sum=0

# puts array

sf_hash =  {:expensive => "yes", :sunny => "yes", :tech => "lots", :windy => "yes"}
sf_hash2 = {}

# interate through array and add each value for a total sum
array.each do |x|
  sum += x
end

puts sum

# interate through hash and printing the keys and values

sf_hash.each do |qualities, value|
  puts "#{qualities} is #{value}"
end


# interate through hash and print the keys and remove the last character from each value

sf_hash.each do |qualities, value|
  puts "#{qualities} is #{value.chop}"
end

# interate through array and add one to each element

array.map do |x|
  puts x + 1  
end

# interate through hash and print the keys and remove the last character from each value and assign it to new hash

sf_hash.map do |qualities, value|
  sf_hash2[qualities] = value.chop
end
puts sf_hash2



array.map! do |x|
  puts x + 1
  x + 1
end

p array

# Delete if greater than a certain condition
numbers = [5, 6, 7, 8]
numbers.delete_if {|x| x >= 7}
numbers_hash = { "five" => 5, "six" => 6, "seven" => 7, "eight" => 8 }
numbers_hash.delete_if {|key, value| value >= 7 }

numbers_array = [1, 2, 3, 4]
numbers_array.keep_if {|z| z >= 3}
numbers_hash= {:one => 1, :two => 2, :three => 3, :four => 4}
numbers_hash.keep_if {|key, value| value >= 3}

numbers2_array = [1, 2, 3, 4]
numbers2_array.select {|a| a <= 2}
numbers2_hash= {:one => 1, :two => 2, :three => 3, :four => 4}
numbers2_hash.select {|key, value| value >= 2}

numbers3_array = [1, 2, 3, 4]
numbers3_array.keep_if {|b| b <= 3} 
numbers3_hash= {:one => 1, :two => 2, :three => 3, :four => 4}
numbers3_hash.keep_if {|key, value| value <= 3}