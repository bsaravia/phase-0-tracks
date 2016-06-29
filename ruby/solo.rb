# Make a class for schools
# attritutes: name, date founded, number of students, teacher-student ratio, endowment
# methods: rename school, increase student body, lay-off teachers, increase endowment

class School
	attr_reader :date_founded
	attr_accessor :name, :num_students, :num_students_per_teacher, :endowment

	def initialize(name, year, students, ratio, endowment)
		@name = name
		@date_founded = year
		@num_students = students
		@num_students_per_teacher = ratio
		@endowment = endowment
		puts "Created school: #{@name}!"
	end

	def grow
		growth = (rand(30..100).to_f/1000)
		@num_students = (@num_students * (1+growth)).ceil
	end

	def lay_offs
		rate = (rand(10..100).to_f/1000)
		@num_students_per_teacher = (@num_students_per_teacher * (1-rate)).round(1)
	end

	def name_change(new_name)
		@name = new_name
	end

	def donation(money)
		@endowment += money.to_i
	end


	def description 
		puts ""
		puts "Name: #{@name}"
		puts "Date Founded: #{@date_founded}"
		puts "Number of students: #{@num_students}"
		puts "Number of students per teacher: #{@num_students_per_teacher}"
		puts "Endowment: $#{@endowment}"
		puts ""
	end


end

def make_school
	puts "Great! What's the name of your school?"
	name = gets.chomp
	
	puts "What year was #{name} founded?"
	year = gets.chomp.to_i
	
	puts "How many students go to #{name}?"
	students = gets.chomp.to_i
	
	puts "How many students are there per teacher at #{name}?"
	ratio = gets.chomp.to_f
	
	puts "How large is the endowment at #{name}?"
	endowment = gets.chomp.to_i
	
 	School.new(name, year, students, ratio, endowment)
end


# puts Time.now.year

# puts rand(0..99).to_f/100

# school1 = School.new("SPS", 1834, 500, 6, 100000)
# school1.description
# school1.grow
# school1.name_change("ASP")
# school1.description
# school1.donation(2000.52)
# school1.description
# school1.lay_offs
# school1.description


puts "Hey folks. Education is good. Make a school? (y/n)"

until gets.chomp == "y" #|| gets.chomp == "Y"  || gets.chomp == "yes" || gets.chomp == "Yes"
	puts "Come on, help people learn. Make a school? (y/n)"
end

school = []
school << make_school
school[-1].description

puts "Make another school?"
until gets.chomp == "no" #|| gets.chomp == "Y"  || gets.chomp == "yes" || gets.chomp == "Yes"
	school << make_school
	school[-1].description
	puts "Make another school?"
end

school.length.times {|x| school[x].description }