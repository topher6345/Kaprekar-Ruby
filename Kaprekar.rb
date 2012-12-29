#!/usr/bin/env ruby

puts "Welcome to the Kaprekar iteration counter! \n"
puts " Please enter a four digit number with 4 unique digits:\n"
input = gets
input = input.chomp!

while input.size > 4
  puts "Too many digits!\n"
	puts " Please enter a four digit number with 4 unique digits:\n"
	input = gets
end

#Step 1.) Make sure that the number has 4 unique digits*/ 
i = 0
j = 0
while i < 4
	while j < 4
		if input.split(//)[i] == input.split(//)[j]
			if i != j
				i = 0
				j = 0
				puts "error: non-unique digits in number, try again\n"
				puts " Please enter a four digit number with 4 unique digits:\n"
				input = gets
			end
		end
	j+=1
	end
i+=1
end

iterations = 0
result = 0
until result == 6174
	result = input.to_s.split('').sort.reverse.to_s.to_i - input.to_s.split('').sort.to_s.to_i
	print result 
	puts "\n"
	input = result
	iterations += 1
end

puts "total iterations to 6174:"
print iterations 
puts "\n"g
