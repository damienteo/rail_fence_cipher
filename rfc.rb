class Cipher

	def encode(string)
		split_string = string.split("")
		firstRow=[]
		secondRow=[]
		thirdRow=[]
		split_string.each_with_index do |letter, index|
			if index == 0 || index%4==0
				firstRow << split_string[index]
			elsif index%2!=0
				secondRow << split_string[index]
			elsif index%2==0
				thirdRow << split_string[index]
			end
		end
		translated = firstRow + secondRow + thirdRow
		joined = translated.join
	end

end

puts "What is the input?"

string=gets.downcase.chomp

encoded = Cipher.new.encode(string)

puts "encoded:" + encoded
