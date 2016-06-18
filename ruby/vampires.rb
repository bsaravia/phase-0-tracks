#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false
currentyear = 2016

puts "How many employees will be processed?"
employees = gets.chomp.to_i
count = 0

until count == employees do

	puts "What is your name?"
	name = gets.chomp
 
	puts "How old are you?"
	age = gets.chomp.to_i
	until age > 0 do
		puts "I'm not buying it. Try again: How old are you?"
		age = gets.chomp.to_i
	end

	puts "What year were you born?"
	year = gets.chomp.to_i

	until year <= currentyear do
		puts "Please input a year no later than " + currentyear.to_s + ". If you were born before 0 AD, please input the year as a negative number. Let's try again: What year were you born?"
		year = gets.chomp.to_i
	end
	
	if age == (2016 - year)
		ageboolean = true
	else
		ageboolean = false
	end

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp

	until garlic == "yes" || garlic == "no"
		puts "Please input only 'yes' or 'no'. Garlic?"
		garlic = gets.chomp
	end

	if garlic == "yes"
		garlicboolean = true
	elsif garlic == "no"
		garlicboolean = false
	end

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp

	until insurance == "yes" || insurance == "no"
		puts "Please input only 'yes' or 'no'. Insurance?"
		insurance = gets.chomp
	end

	if insurance == "yes"
		insuranceboolean = true
	elsif insurance == "no"
		insuranceboolean = false
	end

	puts "Please name any allergies you have, one at a time. If you do not have any, write none."
	allergy = gets.chomp

	if allergy == "none"
		puts "no allergies"
	else
		until allergy == "done" || allergy == "sunshine" do
			puts "Ok, you are allergic to " + allergy + ". Please provide the next allergy. Press done if you are finished."
			allergy = gets.chomp		
		end
	end

	#puts "The age is " + age.to_s + " and the year is " + year.to_s + ". Therefore, it is " + ageboolean.to_s
	puts "ageboolean is " + ageboolean.to_s
	puts "garlicboolean is " + garlicboolean.to_s
	puts "insuranceboolean is " + insuranceboolean.to_s
	puts "allergy is " + allergy

	case
	when name == "Drake Cula" || name == "Tu Fang"
		puts "Employee " + (count + 1).to_s + " (" + name + ") is definitely a vampire."
	when !ageboolean && !garlicboolean && !insuranceboolean
		puts "Employee " + (count + 1).to_s + " (" + name + ") is almost certainly a vampire."
	when (!ageboolean && ( !garlicboolean || !insuranceboolean)) || allergy == "sunshine"
		puts "Employee " + (count + 1).to_s + " (" + name + ") is probably a vampire."
	when ageboolean && (garlicboolean || insuranceboolean)
		puts "Employee " + (count + 1).to_s +  " (" + name + ") is probably not a vampire."
	else
		puts "Employee " + (count + 1).to_s + " (" + name + "): Results inconclusive"
	end

	count += 1
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end
