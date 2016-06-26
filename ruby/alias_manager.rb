def create_alias(name)
	next_letter(swap_first_and_last(name))
end

def swap_first_and_last(name)
	name_array = name.split(' ') #converts name into array [first, last]
	name_array[0], name_array[1] = name_array[1], name_array[0] #switches array  [first, last] to  [last, first]
	name_array.join(' ') #converts array of words back into string
end

def next_letter(name)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	name_array2 = name.split('')
	name_array2.map! do |letter|
		if letter == " "
			letter = " "
		elsif vowels.include?(letter)
			letter = next_vowel(letter)
		elsif consonants.include?(letter)
			letter = next_consonant(letter)
		else
			puts "Something wrong here"
		end
	end
	name_array2.join #converts array of letters back into string
end

def next_vowel(letter)
	vowels = ["a","e","i","o","u"]
	if vowels.index(letter) == vowels.length-1
		vowels.first
	else
		vowels[vowels.index(letter)+1]
	end
end

def next_consonant(letter)
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	if consonants.index(letter) == consonants.length-1
		consonants.first
	else
		consonants[consonants.index(letter)+1]
	end
end

names_hash = {} #initialize hash
count = 0 #number of inputs

while true 
	count += 1	
	puts "Waz ur name son?"	
	name = gets.chomp #Assumption: user input 'name' is a string composed of two parts seperated by a space
	if name == "quit" || name == "q" || name == "Q" || name == "Quit"
		count -= 1 #returns count to correct number of names
		break #exit loop
	else
		number = "Name"+ count.to_s #The hash key corresponds to order it was given
		names_hash[number.to_sym] = [name,create_alias(name)] #converts names to aliases and populates hash
	end
end

puts "Here are the #{count} name and aliases pairs"
names_hash.each {|number, names| puts "#{number}: #{names[1]} is actually #{names[0]}"} #prints the array pairs

