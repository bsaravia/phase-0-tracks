# module Shout
 
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
 
#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# puts Shout.yell_angrily("I'm Hangry")
# puts Shout.yell_happily("I finally ate")

module Shout
 
  def yell_angrily(words)
    words + "!!!" + " :("
  end
 
  def yell_happily(words)
    words + "!!!" + " :)"
  end

end

class Crazy_Person
  include Shout
end

class Normal_Person
  include Shout
end

person1 = Crazy_Person.new
puts person1.yell_angrily("I'm Hangry")
puts person1.yell_happily("I finally ate")

person2 = Normal_Person.new
puts person2.yell_angrily("I'm Hangry too")
puts person2.yell_happily("I finally ate too")