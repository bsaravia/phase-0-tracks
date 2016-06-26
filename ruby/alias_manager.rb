# letters = "hello world".split(' ')
# letters.class
# letters.map! { |letter| letter.next }
# # letters
# # new_string = letters.join('')


# # "hello world".split(' ').map!{|letter| letter.next}.join('')


# # "hello world".split(' ')

def create_fake_name(name)
	name_array = name.split(' ') #converts name into array [first, last]
	name_array[0], name_array[1] = name_array[1], name_array[0] #switches array  [first, last] to  [last, first]
	name_array.join(' ') #converts array back into string
end


names_hash = {} #initialize hash
count = 0 #number of person

while true 
	count += 1	
	puts "Waz ur name son?"	
	name = gets.chomp #Assumption: user input 'name' is a string composed of two parts seperated by a space
	if name == ("quit" || "q" || "Q" || "Quit")
		count -= 1 #returns count to correct number of names
		break #exit loop
	else
		number = "person"+ count.to_s
		names_hash[number.to_sym] = [name,create_fake_name(name)]
		
		# names_hash[:correct_name] = name
		# names_hash[:edited_name] = create_fake_name(name)
		# puts "create_fake_name(name)"
	
	end
end

puts "count is #{count}"
# puts names_hash
names_hash.each_value {|names| puts "#{names[1]} is actually #{names[0]}"}




