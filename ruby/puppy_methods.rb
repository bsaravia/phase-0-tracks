class Puppy

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

brock = Puppy.new
brock.fetch("ball")
brock.speak(5)
brock.roll_over
puts brock.dog_years(5)
brock.jumps_on("table")