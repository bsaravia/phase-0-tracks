def encrypt(string)

	index = 0
	while index < string.length

		if string[index] == " "
			string[index]= string[index]
		elsif string[index] == "z"
				string[index]	= "a"
		else
			string[index] = string[index].next
		end
		index += 1
	end
	return string
end

encrypt("abc defg zzz")
