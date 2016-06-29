class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	puts "Woof!\n" * num
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(num)
  	num * 7
  end

  def jumps_on(thing)
  	puts "The dog jumped on the #{thing}."
  end

end

# brock = Puppy.new
# brock.fetch("ball")
# brock.speak(5)
# brock.roll_over
# puts brock.dog_years(5)
# brock.jumps_on("table")

class Roller_Coaster

	def initialize(name)
		puts "Welcome to #{name}! Don't die please."
		@name = name
	end

	def launch
		puts "Please keep your arms and legs inside the ride at all times. Starting in 3...2...1...launch"
	end

	def speed(velocity)
		puts "Roller Coaster ##{@name} is now going at #{velocity} mph. Brace yourselves!"
	end
end

# rl1 = Roller_Coaster.new("Superman")
# rl1.launch
# rl1.speed(85)

roller_coasters = []
num = 50

num.times {roller_coasters << Roller_Coaster.new(rand(1..1000))}

roller_coasters.each do |coaster| 
	coaster.launch
	coaster.speed(rand(25..125).to_s)
end