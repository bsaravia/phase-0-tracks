client_hash = {}
puts "Hello. Please input the client's name"
client_hash[:client_name] = gets.chomp

puts "Thanks. Now please input the client's age (whole number)"
client_hash[:client_age] = gets.chomp.to_i

puts "Thanks. Now please input the number of number of children"
client_hash[:num_children] = gets.chomp.to_i

puts "Thanks. Now please input the decor theme"
client_hash[:decor_theme] = gets.chomp

puts "Thanks. Now please input the budget"
client_hash[:budget] = gets.chomp.to_i

puts "Thanks. Now please input the type of pet"
client_hash[:pet] = gets.chomp

puts "Here are your responses: #{client_hash}"
puts "If you need to correct a previous response, please type one of the following. If not, please enter 'none'"

client_hash.each_key{|x| puts x.to_s}
hash_key = gets.chomp

# puts "Thanks! If you need to correct a previous response, please type one of the following (without the colon): #{client_hash.keys.to_s}. If not, please enter 'none'"


if hash_key != ("none" || "NONE")
	puts "So what should it be changed to?"
	client_hash[hash_key.to_sym] = gets.chomp
end

puts client_hash
# client_hash