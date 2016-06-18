def previous(letter)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	prev = alphabet.index(letter) - 1
	return alphabet[prev]
end

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
	#puts string
	return string
end

def decrypt(string)
	index = 0

	while index < string.length
		if string[index] == " "
			string[index]= string[index]
		else
			string[index] = previous(string[index])
		end
		index += 1
	end
	#puts string
	return string
end

#encrypt("abc defg zzz")
#decrypt("bcd efgh aaa")

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish")) #this nested method works because decrypt takes as an argument the output of the encryption method

puts "Would you like to encrypt or decrypt the password?"
mode = gets.chomp

until mode == "encrypt" || mode == "e" || mode == "decrypt" || mode == "d" do
	puts "Error. Try again: Would you like to encrypt or decrypt the password?"
	mode = gets.chomp	
end

puts "What is the password?"
pw = gets.chomp

if mode == "encrypt" || mode == "e"
	result = encrypt(pw)
elsif mode == "decrypt" || mode == "d"
	result = decrypt(pw)
end

puts "The " + mode + "ed password is " + result