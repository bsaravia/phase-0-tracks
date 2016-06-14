puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "How loud is the hamster from 1-10?"
volume = gets.chomp
volume.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption?"
candidate = gets.chomp

if candidate == "yes" 
	candidate_boolean = true
	puts candidate_boolean
elsif candidate =="no"
	candidate_boolean = false
	puts candidate_boolean
else
	puts "Try again"
end

puts "What is the hamster's age?"
hamster_age = gets.chomp

if hamster_age=="" 
	hamster_age=nil
	puts "This is a nil variable"
end


puts "The hamster's name is " + hamster_name + " and its fur color is " + fur_color + 
". On a scale of 1-10, its volume is " + volume + " and it is " + hamster_age + 
" years old. Therefore, the answer to if this hamster should be adopted is " + candidate + "."
