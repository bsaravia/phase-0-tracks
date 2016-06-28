class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		# puts "Ho, ho, ho! Haaaappy holidays!"
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a good #{cookie_type}!" 
	end
	
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end	

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end
	
	# def age
	# 	@age
	# end
	
	# def ethnicity
	# 	@ethnicity
	# end
	
end

# hohoho = Santa.new("male", "black")
# puts hohoho.speak
# puts hohoho.eat_milk_and_cookies("chocolate chip")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# hohoho = Santa.new("male", "black")
# hohoho.get_mad_at("Vixen")
# puts "Age: #{hohoho.age}"
# hohoho.celebrate_birthday
# puts "Age: #{hohoho.age}"
# puts "Ethnicity: #{hohoho.ethnicity}"
# hohoho.gender = "agender"
# hohoho

puts "How many santas you want?"
santas_num = gets.chomp.to_i

santas_num.times do
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	santas[-1].age = rand(0..140)
	puts "Santa gender: #{santas[-1].gender}"
	puts "Santa ethnicity: #{santas[-1].ethnicity}"
	puts "Santa age: #{santas[-1].age}"
	# puts "Reinder Ranking: #{santas[-1].get_mad_at("Dasher")}"
end