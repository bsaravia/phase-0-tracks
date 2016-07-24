require 'sqlite3'
require 'faker'

create_exercises_table = <<-SQL
  CREATE TABLE IF NOT EXISTS exercises(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    duration INT,
    day VARCHAR(255),
    time VARCHAR(255),
    mood VARCHAR(255),
    intensity VARCHAR(255),
    notes VARCHAR(255),
    calories INT
  )
SQL



create_types_table = <<-SQL
  CREATE TABLE IF NOT EXISTS type(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    calories_per_hour INT
  )
SQL

def create_workout(db, name, duration, day, time, mood, intensity, notes)
  db.execute("INSERT INTO exercises (name, duration, day, time, mood, intensity, notes) VALUES (?, ?, ?, ?, ?, ?, ?)", [name, duration, day, time, mood, intensity, notes])
end

def create_type(db, name, calories)
  db.execute("INSERT INTO type (name, calories_per_hour) VALUES (?, ?)", [name, calories])
end

def new_type(db)
	puts "What is the name of the new type of exercise?"
	name = gets.chomp
	puts "How many calories does #{name} burn per hour?"
	calories = gets.chomp.to_i
	create_type(db, name, calories)
end

def new_workout(db)
	puts "What exercise did you do?"
	name = gets.chomp
	puts "How many minutes did #{name} last?"
	duration = gets.chomp.to_i
	puts "What day was #{name}?"
	day = gets.chomp
	puts "At what time did you start #{name}?"
	time = gets.chomp
	puts "What was your mood during #{name}?"
	mood = gets.chomp
	puts "On a scale from 1 to 10, how intense was #{name}?"
	intensity = gets.chomp.to_i
	puts "What are some additional notes regarding your #{name} workout?"
	notes = gets.chomp
	create_workout(db, name, duration, day, time, mood, intensity, notes)
end

def view_workouts(db)
	prep_update(db)
	max = db.execute("SELECT MAX(id) FROM exercises;")[0][0]
	i = 1
	while i <= max
		array = db.execute("SELECT * FROM exercises WHERE id=?;",[i])[0]

		puts "
Exercise: #{array[1]}
Length: #{array[2]}
Day: #{array[3]}
Time: #{array[4]}
Mood: #{array[5]}
Intensity: #{array[6]}
Notes: #{array[7]}
calories: #{array[8]}"
		    i += 1
	end
end

def update(db,exercises_id,type_id)
	cal_per_hour = db.execute("SELECT type.calories_per_hour FROM type WHERE id=?;",[type_id])[0][0]
	duration = db.execute("SELECT exercises.duration FROM exercises WHERE id=?;",[exercises_id])[0][0]
	calories = cal_per_hour * duration / 60

	# puts "cal_per_hour: #{cal_per_hour} of type: #{cal_per_hour.class}"
	# puts "duration: #{duration} of type: #{duration.class}"
	# puts "calories: #{calories} of type: #{calories.class}"

	db.execute("UPDATE exercises SET calories=? WHERE id=?;", [calories, exercises_id])
end

def prep_update(db)
	max_exercises = db.execute("SELECT MAX(id) FROM exercises;")[0][0]
	max_type = db.execute("SELECT MAX(id) FROM type;")[0][0]
	# puts "max_exercises: #{max_exercises}"
	# puts "max_type: #{max_type}"

	activities = [nil]
	i = 1
	while i <= max_type
		var2 = db.execute("SELECT * FROM type WHERE id=?;",[i])[0][1]
		activities << var2 
		i += 1
	end

 	 	j = 1
	while j <= max_exercises
		var1 = db.execute("SELECT * FROM exercises WHERE id=?;",[j])[0][1]
		if activities.index(var1) != nil
			update(db,j,activities.index(var1))
		end
		j += 1
	end
end


# puts "this is the first line"

db = SQLite3::Database.new("exercises.db")

# puts "Database created"

db.execute(create_exercises_table)
db.execute(create_types_table)

# puts "tables created"

# puts "Would you like to view (v) or edit (e) data?"
# if new_input == "v"
	
# elsif new_input == "e" 
	
# else 
# 	puts "Error. Please try again"
# end

# puts "Would you like to input a new type of exercise (t) or an individual workout session (w)?"
# new_input = gets.chomp
# if new_input == "t"
# 	new_type(db)
# elsif new_input == "w" 
# 	new_workout(db)
# else 
# 	puts "Error. Please try again"
# end



while true
	puts "\nChoose one of the following:\n1. Input new workout\n2. Input new type of exercise\n3. View past workouts\n4. Exit\n"
	input = gets.chomp.to_i
	if input == 1
		new_workout(db)
	elsif input == 2
		new_type(db)
	elsif input == 3
		view_workouts(db)
	elsif input == 4
		break		
	else
		puts "Error. Please try again."
	end

end

# var = SELECT exercises.name, exercises.duration, exercises.day, exercises.time, exercises.mood, exercises.intensity, exercises.notes, type.calories_per_hour FROM exercises JOIN type ON exercises.name = type.name;
#incomplete

